.class public Lcom/bytedance/embedapplog/az;
.super Lcom/bytedance/embedapplog/aq;
.source "SourceFile"


# static fields
.field static h:Ljava/lang/String;


# instance fields
.field public i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-string v0, "succEvent"

    sput-object v0, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aq;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 48
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aq;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/embedapplog/az;->k:I

    .line 52
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getSuccRate()I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->i:I

    .line 53
    iput-object p1, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/bytedance/embedapplog/az;->m:I

    .line 56
    invoke-static {}, Lcom/bytedance/embedapplog/bn;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/embedapplog/az;->n:J

    .line 57
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;
    .registers 4

    .line 81
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/az;->a:J

    .line 82
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/az;->b:J

    .line 83
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->c:Ljava/lang/String;

    .line 84
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->d:Ljava/lang/String;

    .line 85
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    .line 86
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->k:I

    .line 87
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->i:I

    .line 88
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    .line 89
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->m:I

    .line 90
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/az;->n:J

    .line 91
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tea_event_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    const-string v1, "event_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/bytedance/embedapplog/az;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_monitor"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget v0, p0, Lcom/bytedance/embedapplog/az;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bav_monitor_rate"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    const-string v1, "monitor_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/bytedance/embedapplog/az;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "monitor_num"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    .line 110
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->a:J

    const-string v2, "local_time_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->b:J

    const-string v2, "tea_event_index"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    const-string v1, "event_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget v0, p0, Lcom/bytedance/embedapplog/az;->k:I

    const-string v1, "is_monitor"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    iget v0, p0, Lcom/bytedance/embedapplog/az;->i:I

    const-string v1, "bav_monitor_rate"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    iget-object v0, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    const-string v1, "monitor_status"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget v0, p0, Lcom/bytedance/embedapplog/az;->m:I

    const-string v1, "monitor_num"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    iget-wide v0, p0, Lcom/bytedance/embedapplog/az;->n:J

    const-string v2, "date"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 21

    .line 62
    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "tea_event_index"

    const-string v3, "integer"

    const-string v4, "session_id"

    const-string v5, "varchar"

    const-string v6, "user_unique_id"

    const-string v7, "varchar"

    const-string v8, "event_name"

    const-string v9, "varchar"

    const-string v10, "is_monitor"

    const-string v11, "integer"

    const-string v12, "bav_monitor_rate"

    const-string v13, "integer"

    const-string v14, "monitor_status"

    const-string v15, "varchar"

    const-string v16, "monitor_num"

    const-string v17, "integer"

    const-string v18, "date"

    const-string v19, "integer"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/aq;
    .registers 7

    .line 142
    const-string v0, "local_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/embedapplog/az;->a:J

    .line 143
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/embedapplog/az;->b:J

    .line 144
    const-string v0, "session_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->c:Ljava/lang/String;

    .line 145
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->d:Ljava/lang/String;

    .line 146
    const-string v0, "event_name"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    .line 147
    const-string v0, "is_monitor"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->k:I

    .line 148
    const-string v0, "bav_monitor_rate"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->i:I

    .line 149
    const-string v0, "monitor_status"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    .line 150
    const-string v0, "monitor_num"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/az;->m:I

    .line 151
    const-string v0, "date"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/az;->n:J

    .line 152
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 4

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/bytedance/embedapplog/az;->j:Ljava/lang/String;

    const-string v2, "event_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget v1, p0, Lcom/bytedance/embedapplog/az;->k:I

    const-string v2, "is_monitor"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    iget v1, p0, Lcom/bytedance/embedapplog/az;->i:I

    const-string v2, "bav_monitor_rate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget-object v1, p0, Lcom/bytedance/embedapplog/az;->l:Ljava/lang/String;

    const-string v2, "monitor_status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iget v1, p0, Lcom/bytedance/embedapplog/az;->m:I

    const-string v2, "monitor_num"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 158
    sget-object v0, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    return-object v0
.end method
