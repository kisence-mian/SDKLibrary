.class public Lcom/bytedance/embedapplog/d/i;
.super Lcom/bytedance/embedapplog/d/a;
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

    .prologue
    .line 17
    const-string v0, "succEvent"

    sput-object v0, Lcom/bytedance/embedapplog/d/i;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    .line 52
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getSuccRate()I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    .line 53
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    .line 56
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->n:J

    .line 57
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;
    .registers 4
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->a:J

    .line 82
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->b:J

    .line 83
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->c:Ljava/lang/String;

    .line 84
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->d:Ljava/lang/String;

    .line 85
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    .line 86
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    .line 87
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    .line 88
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    .line 89
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    .line 90
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->n:J

    .line 91
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "event_name"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "is_monitor"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v0, "bav_monitor_rate"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v0, "monitor_status"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "monitor_num"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "date"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "event_name"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "is_monitor"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string v0, "bav_monitor_rate"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v0, "monitor_status"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "monitor_num"

    iget v1, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v0, "date"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/i;->n:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local_time_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tea_event_index"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_unique_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_monitor"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bav_monitor_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "monitor_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "monitor_num"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "integer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/d/a;
    .registers 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    const-string v0, "local_time_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->a:J

    .line 143
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->b:J

    .line 144
    const-string v0, "session_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->c:Ljava/lang/String;

    .line 145
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->d:Ljava/lang/String;

    .line 146
    const-string v0, "event_name"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    .line 147
    const-string v0, "is_monitor"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    .line 148
    const-string v0, "bav_monitor_rate"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    .line 149
    const-string v0, "monitor_status"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    .line 150
    const-string v0, "monitor_num"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    .line 151
    const-string v0, "date"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/i;->n:J

    .line 152
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    const-string v1, "event_name"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "is_monitor"

    iget v2, p0, Lcom/bytedance/embedapplog/d/i;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v1, "bav_monitor_rate"

    iget v2, p0, Lcom/bytedance/embedapplog/d/i;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v1, "monitor_status"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "monitor_num"

    iget v2, p0, Lcom/bytedance/embedapplog/d/i;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/bytedance/embedapplog/d/i;->h:Ljava/lang/String;

    return-object v0
.end method
