package com.iardo.service;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.iardo.config.MailConfig;

public class EmailService {

	private static final String SENDER_DISPLAY_NAME = "Team Iardo";

	private Session getSession() {
		Properties props = new Properties();
		props.put("mail.smtp.host", MailConfig.getHost());
		props.put("mail.smtp.port", MailConfig.getPort());
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");

		return Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(MailConfig.getUsername(), MailConfig.getPassword());
			}
		});
	}

	public void sendAdminMail(String name, String email, String phone, String message) throws MessagingException {

		String html = "<div style=\"font-family: Arial, Helvetica, sans-serif; max-width: 600px; margin: 0 auto; "
				+ "border: 1px solid #e0e0e0; border-radius: 8px; overflow: hidden;\">"
				+ "  <div style=\"background-color: #1a1a2e; padding: 20px 24px;\">"
				+ "    <h2 style=\"color: #ffffff; margin: 0; font-size: 20px;\">New Contact Form Submission</h2>"
				+ "  </div>" + "  <div style=\"padding: 24px; background-color: #ffffff;\">"
				+ "    <table style=\"width: 100%; border-collapse: collapse; font-size: 14px; color: #333333;\">"
				+ "      <tr>" + "        <td style=\"padding: 8px 0; font-weight: bold; width: 100px;\">Name</td>"
				+ "        <td style=\"padding: 8px 0;\">" + escapeHtml(name) + "</td>" + "      </tr>" + "      <tr>"
				+ "        <td style=\"padding: 8px 0; font-weight: bold;\">Email</td>"
				+ "        <td style=\"padding: 8px 0;\">" + escapeHtml(email) + "</td>" + "      </tr>" + "      <tr>"
				+ "        <td style=\"padding: 8px 0; font-weight: bold;\">Phone</td>"
				+ "        <td style=\"padding: 8px 0;\">" + escapeHtml(phone) + "</td>" + "      </tr>"
				+ "    </table>" + "    <div style=\"margin-top: 20px;\">"
				+ "      <p style=\"font-weight: bold; margin: 0 0 8px 0; color: #333333;\">Message</p>"
				+ "      <p style=\"background-color: #f7f7fa; padding: 12px 16px; border-radius: 6px; "
				+ "         color: #333333; white-space: pre-line; margin: 0;\">" + escapeHtml(message) + "</p>"
				+ "    </div>" + "  </div>"
				+ "  <div style=\"background-color: #f7f7fa; padding: 14px 24px; text-align: center;\">"
				+ "    <p style=\"font-size: 12px; color: #999999; margin: 0;\">This message was sent from the Iardo contact form.</p>"
				+ "  </div>" + "</div>";

		sendEmail(MailConfig.getAdminEmail(), "New Contact Form Submission", html);
	}

	public void sendUserAcknowledgement(String name, String email) throws MessagingException {

		String html = "<div style=\"font-family: Arial, Helvetica, sans-serif; max-width: 600px; margin: 0 auto; "
				+ "border: 1px solid #e0e0e0; border-radius: 8px; overflow: hidden;\">"
				+ "  <div style=\"background-color: #1a1a2e; padding: 20px 24px;\">"
				+ "    <h2 style=\"color: #ffffff; margin: 0; font-size: 20px;\">Thank You For Contacting Iardo</h2>"
				+ "  </div>"
				+ "  <div style=\"padding: 24px; background-color: #ffffff; color: #333333; font-size: 14px; line-height: 1.6;\">"
				+ "    <p>Hi " + escapeHtml(name) + ",</p>"
				+ "    <p>Thank you for reaching out to Iardo. We've received your enquiry and our team will get back to you shortly.</p>"
				+ "    <p style=\"margin-top: 24px;\">Regards,<br><strong>Team Iardo</strong></p>" + "  </div>"
				+ "  <div style=\"background-color: #f7f7fa; padding: 14px 24px; text-align: center;\">"
				+ "    <p style=\"font-size: 12px; color: #999999; margin: 0;\">This is an automated acknowledgement, please do not reply to this email.</p>"
				+ "  </div>" + "</div>";

		sendEmail(email, "Thank You For Contacting Iardo", html);
	}

	private void sendEmail(String to, String subject, String htmlBody) throws MessagingException {

		Message message = new MimeMessage(getSession());

		try {
			message.setFrom(new InternetAddress(MailConfig.getUsername(), SENDER_DISPLAY_NAME));
		} catch (UnsupportedEncodingException e) {
			// Falls back to an address-only From if display name encoding fails for some
			// reason
			throw new MessagingException("Failed to set sender display name", e);
		}

		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		message.setSubject(subject);
		message.setContent(htmlBody, "text/html; charset=UTF-8");

		Transport.send(message);
	}

	/**
	 * Minimal HTML escaping for user-supplied form values so submitted content
	 * can't break the email markup or inject unintended HTML.
	 */
	private String escapeHtml(String input) {
		if (input == null) {
			return "";
		}
		return input.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;")
				.replace("'", "&#39;");
	}
}