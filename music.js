const expandAllElements = expand => {
  let elts = document.querySelectorAll("details");
  elts = [...elts];
  if (expand) {
    elts.map(item => item.setAttribute("open", true));
  } else {
    elts.map(item => item.removeAttribute("open"));
  }
};
const expandChElements = (chId, expand) => {
  let chapter = document.querySelector(chId);
  let elts = chapter.querySelectorAll("details");
  elts = [...elts];
  if (expand) {
    elts.map(item => item.setAttribute("open", true));
  } else {
    elts.map(item => item.removeAttribute("open"));
  }
};
const toggleViz = (style) => {
  let players = document.querySelectorAll("midi-player");
  let visualizers = document.querySelectorAll("midi-visualizer");
  players = [...players];
  visualizers = [...visualizers];
  if (style == null) {
    players.map(item => item.removeAttribute("visualizer"));
    visualizers.map(item => item.style.display = "none");
  } else {
    players.map(item => {
      let filename = item.id.endsWith("-play") ? item.id.slice(0, -5) : item.id;
      item.setAttribute("visualizer", "#" + filename + "-viz");
    });
    visualizers.map(item => {
      item.style.display = "block";
      item.setAttribute("type", style);
    });
  }
}
