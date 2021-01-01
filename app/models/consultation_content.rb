class ConsultationContent < ActiveHash::Base
  self.data = [
    { id: 0, name: '------' },
    { id: 1, name: '検査時間' },
    { id: 2, name: '検査前の処置' },
    { id: 3, name: '検査の流れ' },
    { id: 4, name: '検査の内容' }
  ]
end
