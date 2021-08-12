.class Lcom/kwad/sdk/utils/AppStatusHelper$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/utils/AppStatusHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/utils/AppStatusHelper$b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$d;->a:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/kwad/sdk/core/report/e;->a(Lorg/json/JSONArray;)V

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$d;->a:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper$b;->a(Ljava/util/List;)V

    :cond_10
    return-void
.end method
