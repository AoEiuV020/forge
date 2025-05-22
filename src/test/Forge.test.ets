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
    it('encodeChinese', 0, () => {
      const str = '你好，世界！';
      const encoded = forge.util.encodeUtf8(str);
      const bin = forge.util.binary.raw.decode(encoded)
      console.log(bin.toString());
      const b64 = forge.util.encode64(encoded);
      console.log(b64);
      expect(b64).assertEqual('5L2g5aW977yM5LiW55WM77yB');
    });

  });
}
