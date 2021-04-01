.class Lcom/bytedance/embed_device_register/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    .line 231
    return-void
.end method

.method constructor <init>(Lcom/bytedance/embed_device_register/e$a$a;)V
    .registers 4

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    .line 234
    iget-object v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Ljava/lang/String;

    .line 236
    iget-boolean v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->c:Z

    iput-boolean v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->c:Z

    .line 237
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->d:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->d:J

    .line 238
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->e:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->e:J

    .line 240
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    .line 241
    iget v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->g:I

    iput v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->g:I

    .line 242
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$a$a;->h:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->h:J

    .line 243
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/e$a$a;-><init>()V

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 271
    :goto_b
    return-object v0

    .line 251
    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "is_track_limited"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    const-string v4, "take_ms"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v5, "time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "req_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    const-string v7, "query_times"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    const-string v8, "hw_id_version_code"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v8, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-direct {v8}, Lcom/bytedance/embed_device_register/e$a$a;-><init>()V

    .line 261
    invoke-virtual {v8, v2}, Lcom/bytedance/embed_device_register/e$a$a;->b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 262
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/embed_device_register/e$a$a;->a(Z)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    const-wide/16 v8, -0x1

    .line 263
    invoke-static {v4, v8, v9}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/embed_device_register/e$a$a;->a(J)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    const-wide/16 v8, -0x1

    .line 264
    invoke-static {v5, v8, v9}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/embed_device_register/e$a$a;->b(J)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v6}, Lcom/bytedance/embed_device_register/e$a$a;->c(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    const/4 v3, -0x1

    .line 266
    invoke-static {v7, v3}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/embed_device_register/e$a$a;->a(I)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    const-wide/16 v4, -0x1

    .line 267
    invoke-static {v1, v4, v5}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/embed_device_register/e$a$a;->c(J)Lcom/bytedance/embed_device_register/e$a$a;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_7a} :catch_7c

    move-result-object v0

    goto :goto_b

    .line 268
    :catch_7c
    move-exception v1

    .line 269
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e$a$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 2

    .prologue
    .line 305
    iput p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->g:I

    .line 306
    return-object p0
.end method

.method a(J)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 4

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->d:J

    .line 291
    return-object p0
.end method

.method a(Z)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 2

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->c:Z

    .line 286
    return-object p0
.end method

.method a()Lcom/bytedance/embed_device_register/e$a;
    .registers 13

    .prologue
    .line 315
    new-instance v0, Lcom/bytedance/embed_device_register/e$a;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/embed_device_register/e$a$a;->c:Z

    iget-wide v4, p0, Lcom/bytedance/embed_device_register/e$a$a;->d:J

    iget-wide v6, p0, Lcom/bytedance/embed_device_register/e$a$a;->e:J

    iget-object v8, p0, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    iget v9, p0, Lcom/bytedance/embed_device_register/e$a$a;->g:I

    iget-wide v10, p0, Lcom/bytedance/embed_device_register/e$a$a;->h:J

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/embed_device_register/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;IJ)V

    return-object v0
.end method

.method b(J)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 4

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->e:J

    .line 296
    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c(J)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 4

    .prologue
    .line 310
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->h:J

    .line 311
    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-object p0
.end method
