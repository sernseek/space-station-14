cmd-showaccessreaders-desc = 切换是否在地图上显示权限读取器的权限
cmd-showaccessreaders-help =
    覆盖层信息：
    -Disabled | 权限读取器已禁用
    +Unrestricted | 权限读取器没有限制
    +Set [Index]: [Tag Name]| 权限集合中的一个标签（访问者必须满足集合中的所有标签）
    +Key [StationUid]: [StationRecordKeyId] | 允许的 StationRecordKey
    -Tag [Tag Name] | 不允许的标签（优先于其他允许项）
cmd-showaccessreaders-status = 权限读取器调试覆盖层已设为 {$status}。
