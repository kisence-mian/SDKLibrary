.class public Lcom/tapjoy/TapjoyHttpURLResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentLength:I

.field public date:J

.field public expires:J

.field public headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public redirectURL:Ljava/lang/String;

.field public response:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "headerKey"    # Ljava/lang/String;

    .line 49
    nop

    .line 50
    iget-object v0, p0, Lcom/tapjoy/TapjoyHttpURLResponse;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 52
    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1d

    .line 57
    :cond_1b
    const-string v0, ""

    :goto_1d
    return-object v0
.end method
