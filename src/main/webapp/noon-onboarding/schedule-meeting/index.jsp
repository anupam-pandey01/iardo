<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <title>Schedule Meeting | IARDO</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Schedule your meeting with IARDO">
    
    <!-- External CSS -->
	 <link rel="stylesheet" href="./style.css">    
    <!-- Preconnect for performance -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
</head>

<body>
 <jsp:include page="../../includes/navbar/navbar.jsp" />
    <!-- Floating Particles for Background Animation -->
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>

    <!-- Main Wrapper -->
    <div class="wrapper">
        
        <!-- Header Section -->
        <div class="header">
            <h1>Schedule a Meeting</h1>
            <p class="subtitle">Choose a date and available time slot</p>
        </div>

        <!-- Card Container -->
        <div class="card">

            <!-- Date Selection Section -->
            <div class="date-section">
                <label for="meetingDate">Select Date</label>
                <input type="date" id="meetingDate" aria-label="Select meeting date">
            </div>

            <!-- Time Slots Section -->
            <div class="slots-section">
                <label>Available Time Slots</label>
                <div class="slots" id="slotsContainer" role="list"></div>
            </div>

            <!-- Action Button -->
            <div class="action">
                <button id="continueBtn" disabled aria-label="Continue to confirmation">
                    Continue
                </button>
            </div>

        </div>
    </div>
<jsp:include page="../../includes/footer/footer.jsp" />
<script src="./app.js"></script>
</body>
</html>
