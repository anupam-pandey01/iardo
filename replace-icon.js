const fs = require("fs");
const path = require("path");

const PROJECT_DIR = __dirname;

const oldFavicon =
/<link\s+rel="icon"[^>]*href="\$\{pageContext\.request\.contextPath\}\/assets\/images\/favicon\.ico"[^>]*>\s*/gi;

const newFavicon =
'    <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">\n';

let updated = 0;

function scan(dir) {
    const items = fs.readdirSync(dir, { withFileTypes: true });

    for (const item of items) {
        const fullPath = path.join(dir, item.name);

        if (item.isDirectory()) {
            if (["node_modules", ".git", "target", "build"].includes(item.name))
                continue;

            scan(fullPath);
        } else if (item.isFile() && item.name.endsWith(".jsp")) {
            let content = fs.readFileSync(fullPath, "utf8");

            if (oldFavicon.test(content)) {
                content = content.replace(oldFavicon, newFavicon);
                fs.writeFileSync(fullPath, content, "utf8");
                console.log("Updated:", path.relative(PROJECT_DIR, fullPath));
                updated++;
            }
        }
    }
}

scan(PROJECT_DIR);

console.log(`\nDone! Updated ${updated} file(s).`);