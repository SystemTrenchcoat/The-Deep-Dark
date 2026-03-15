//This object is a persistent object meant to handle the relevant tasks per room

//Vars
tasks = [];
currentTaskIndex = 0;

//Used to delay between tasks
taskComplete = false;
nextTaskTimer = 180;

//Task struct
function Task_Create(_id, _name) {
    return {
        id: _id,
        name: _name
    };
}

//Use this function to create the tasks for each room, tasks only go sequentially for now
function GetTasksForRoom(_room) {
    switch (_room) {
        case Lvl_0:
            return [
                Task_Create("move", "Use WASD to move"),
                Task_Create("kill_krill", "Kill 1 Krill"),
                Task_Create("collect_trash_4", "Collect at least 4 trash"),
                Task_Create("enter_bell", "Enter the Dive Bell")
            ];

        case Lvl_1:
            return [
                Task_Create("collect_trash_6", "Collect at least 6 trash"),
                Task_Create("enter_bell", "Enter the Dive Bell")
            ];

        case Lvl_2:
            return [
                Task_Create("collect_trash_8", "Collect at least 8 trash"),
                Task_Create("enter_bell", "Enter the Dive Bell")
            ];
    }

    return [];
}

//Gets the current task ID
function GetCurrentTaskId() {
    if (currentTaskIndex >= array_length(tasks)) return "";
    return tasks[currentTaskIndex].id;
}

//Gets the current task name
function GetCurrentTaskName() {
    if (currentTaskIndex >= array_length(tasks)) return "All tasks complete";
    return tasks[currentTaskIndex].name;
}

//Going between tasks
function AdvanceTask() {
    currentTaskIndex++;
    taskComplete = false;
    nextTaskTimer = 180;
}