import forgeTest from './Forge.test';
import localUnitTest from './LocalUnit.test';

export default function testsuite() {
  localUnitTest();
  forgeTest();
}
