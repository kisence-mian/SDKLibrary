.class final Lcom/bytedance/embed_device_register/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/e$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:J

.field final e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$a;->a:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$a;->b:Ljava/lang/String;

    .line 197
    iput-boolean p3, p0, Lcom/bytedance/embed_device_register/e$a;->c:Z

    .line 198
    iput-wide p4, p0, Lcom/bytedance/embed_device_register/e$a;->d:J

    .line 199
    iput-wide p6, p0, Lcom/bytedance/embed_device_register/e$a;->e:J

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->f:Ljava/util/List;

    .line 201
    iput p9, p0, Lcom/bytedance/embed_device_register/e$a;->g:I

    .line 202
    iput-wide p10, p0, Lcom/bytedance/embed_device_register/e$a;->h:J

    .line 203
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    const-string v1, "id"

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    const-string v1, "is_track_limited"

    iget-boolean v2, p0, Lcom/bytedance/embed_device_register/e$a;->c:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    const-string v1, "take_ms"

    iget-wide v2, p0, Lcom/bytedance/embed_device_register/e$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    const-string v1, "req_id"

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    const-string v1, "hw_id_version_code"

    iget-wide v2, p0, Lcom/bytedance/embed_device_register/e$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/embed_device_register/e$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
