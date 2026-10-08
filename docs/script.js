const buttons = document.querySelectorAll('[data-filter]');
const cards = document.querySelectorAll('[data-tools]');
const count = document.querySelector('.result-count');
buttons.forEach(button => button.addEventListener('click', () => {
  const filter = button.dataset.filter;
  let shown = 0;
  buttons.forEach(item => item.setAttribute('aria-pressed', String(item === button)));
  cards.forEach(card => {
    const visible = filter === 'all' || card.dataset.tools.split(' ').includes(filter);
    card.hidden = !visible;
    if (visible) shown += 1;
  });
  count.textContent = `${shown} ${shown === 1 ? 'proyecto' : 'proyectos'}${filter === 'all' ? '' : ' · ' + button.textContent}`;
}));
