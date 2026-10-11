(() => {
  const container = document.querySelector('.guide-search');
  const field = document.getElementById('guide-query');
  const results = document.getElementById('search-results');
  const status = document.getElementById('search-status');
  if (!container || !field) return;
  const normalize = text => text.normalize('NFKC').toLowerCase().replace(/\s+/g, ' ').trim();
  const sections = [...document.querySelectorAll('.content section')].map(section => ({
    id: section.id, title: section.querySelector('h2').textContent,
    text: normalize(section.textContent)
  }));
  container.hidden = false;
  field.addEventListener('input', () => {
    results.replaceChildren();
    const query = normalize(field.value);
    if (!query) { status.textContent = ''; return; }
    const words = query.split(' ');
    const matches = sections.filter(section => words.every(word => section.text.includes(word)));
    status.textContent = matches.length ? matches.length + '件の項目が見つかりました。' : '見つかりませんでした。別の言葉で探すか、下の目次をご覧ください。';
    for (const match of matches) {
      const li = document.createElement('li');
      const a = document.createElement('a');
      a.href = '#' + match.id;
      a.textContent = match.title;
      li.append(a); results.append(li);
    }
  });
})();


document.querySelectorAll('.toplink').forEach(link => link.addEventListener('click', () => {
  const toc = document.getElementById('guide-toc');
  if (toc) toc.open = true;
}));
