#pragma once

#include <QObject>

namespace meshroom
{

class Project; // forward declaration

class ProjectsIO
{
public:
    static void populate(Project& project);
};

} // namespace