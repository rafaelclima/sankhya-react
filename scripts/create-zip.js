const fs = require("node:fs");
const archiver = require("archiver");

const output = fs.createWriteStream("src.zip");
const archive = archiver("zip", { zlib: { level: 9 } });

output.on("close", () => {
	console.log("src.zip criado com sucesso");
});

archive.pipe(output);

archive.file("public/index.jsp", { name: "index.jsp" });
archive.file("public/bundle.js", { name: "bundle.js" });

archive.finalize();
