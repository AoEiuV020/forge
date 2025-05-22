import { describe, it, expect } from '@ohos/hypium';
import forge from '../main/js/forge'

export default function forgeTest() {
  describe('forgeTest', () => {
    it('encodeUtf8', 0, () => {
      const str = 'Hello, World!';
      const encoded = forge.util.encodeUtf8(str);
      console.log(encoded);
      const bin = forge.util.binary.raw.decode(encoded)
      console.log(bin.toString());
      const b64 = forge.util.encode64(encoded);
      console.log(b64);
      expect(b64).assertEqual('SGVsbG8sIFdvcmxkIQ==');
    });

  });
}
