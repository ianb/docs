#!/bin/bash
# Regenerates mn-local-coverage-ice-2026.html from the markdown file

cd "$(dirname "$0")"

cat > mn-local-coverage-ice-2026.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minnesota 2026 ICE: local news sources and coverage</title>
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            line-height: 1.6;
        }
        h1 {
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
        }
        a {
            color: #0066cc;
        }
        li {
            margin-bottom: 1em;
        }
        hr {
            margin: 2em 0;
        }
    </style>
</head>
<body>
    <h1>Minnesota 2026 ICE: local news sources and coverage</h1>
    <div id="content"></div>
    <script id="markdown" type="text/markdown">
HTMLEOF

cat mn-local-coverage-ice-2026.md >> mn-local-coverage-ice-2026.html

cat >> mn-local-coverage-ice-2026.html << 'HTMLEOF'
    </script>
    <script>
        const markdown = document.getElementById('markdown').textContent;
        document.getElementById('content').innerHTML = marked.parse(markdown);
    </script>
</body>
</html>
HTMLEOF

echo "Generated mn-local-coverage-ice-2026.html"
