const taskForm = document.getElementById('taskForm');
const taskInput = document.getElementById('taskInput');
const taskList = document.getElementById('taskList');

let tasks = [];

// Cargar tareas desde localStorage
window.onload = () => {
  const savedTasks = localStorage.getItem('tasks');
  if (savedTasks) {
    tasks = JSON.parse(savedTasks);
    renderTasks();
  }
};

// Agregar nueva tarea
taskForm.addEventListener('submit', (e) => {
  e.preventDefault();
  const taskText = taskInput.value.trim();

  if (taskText.length === 0) {
    alert("Escribe una tarea antes de agregar");
    return;
  }

  const newTask = {
    id: Date.now(),
    text: taskText,
    completed: false
  };
  tasks.push(newTask);
  saveTasks();
  renderTasks();
  taskInput.value = '';
  taskInput.focus();
});

// Guardar tareas en localStorage
function saveTasks() {
  localStorage.setItem('tasks', JSON.stringify(tasks));
}

// Renderizar tareas
function renderTasks() {
  taskList.innerHTML = '';
  tasks.forEach(task => {
    const li = document.createElement('li');
    li.className = 'task-item' + (task.completed ? ' completed' : '');
    li.dataset.id = task.id;

    const span = document.createElement('span');
    span.textContent = task.text;

    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.checked = task.completed;

    checkbox.addEventListener('change', () => {
      task.completed = checkbox.checked;
      saveTasks();
      renderTasks();
    });

    const deleteBtn = document.createElement('button');
    deleteBtn.textContent = '×';
    deleteBtn.title = 'Eliminar tarea';
    deleteBtn.addEventListener('click', () => {
      tasks = tasks.filter(t => t.id !== task.id);
      saveTasks();
      renderTasks();
    });

    const div = document.createElement('div');
    div.appendChild(checkbox);
    div.appendChild(deleteBtn);

    li.appendChild(span);
    li.appendChild(div);

    taskList.appendChild(li);
  });
}
