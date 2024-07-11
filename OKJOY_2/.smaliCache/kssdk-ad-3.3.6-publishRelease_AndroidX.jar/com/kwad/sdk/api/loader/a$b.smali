.class Lcom/kwad/sdk/api/loader/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Lcom/kwad/sdk/api/loader/a$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/api/loader/a$b;->a:J

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/a$b;->b:Ljava/lang/String;

    new-instance v0, Lcom/kwad/sdk/api/loader/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/api/loader/a$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/a$b;->c:Lcom/kwad/sdk/api/loader/a$a;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/loader/a$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method a()Z
    .registers 5

    iget-wide v0, p0, Lcom/kwad/sdk/api/loader/a$b;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/a$b;->c:Lcom/kwad/sdk/api/loader/a$a;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
