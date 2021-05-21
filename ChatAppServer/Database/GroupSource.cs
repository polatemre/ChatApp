using ChatAppServer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChatAppServer.Database
{
    public static class GroupSource
    {
        public static List<Group> Groups { get; } = new List<Group>();
    }
}
