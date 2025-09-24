trigger HelloWorldTriggers on Account (before insert) {
System.debug('HelloWorld');
}