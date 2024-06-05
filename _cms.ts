import lumeCms from "lume/cms/mod.ts";

const cms = lumeCms();

// Configuration here
cms.collection("Vereinsordnungen", "src:vo/*.typ", [
	"content: textarea",
]);
cms.upload("Fonts", "src:fonts");

export default cms;