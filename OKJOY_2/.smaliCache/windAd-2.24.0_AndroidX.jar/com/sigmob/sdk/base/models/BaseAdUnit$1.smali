.class Lcom/sigmob/sdk/base/models/BaseAdUnit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/models/BaseAdUnit;->insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/c$a;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->a:Lcom/sigmob/sdk/common/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/a/b$b$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/a/b$b$a;-><init>()V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adslot_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "camp_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "crid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->encode()[B

    move-result-object v2

    const-string v3, "ad"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "create_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_md5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endcard_md5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "request_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_source_channel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "load_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/b$b$a;->a()Lcom/sigmob/sdk/common/a/b$b;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/base/models/BaseAdUnit$1$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1$1;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/common/a/b$b;Lcom/sigmob/sdk/common/a/c$a;)V

    return-void
.end method
