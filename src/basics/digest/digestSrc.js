$digest: function() {
  do { // "while dirty" loop
    dirty = false;
    do { // "traverse the scopes" heirarchy
      if ((watchers = current.$$watchers)) {
        // process our watches
        length = watchers.length;
        while (length--) {
          watch = watchers[length];
          /**
            Evaluate the watch to see if it has changed
            ...
           **/
        }
      }
    } while ((current = next));
  } while (dirty);
}
