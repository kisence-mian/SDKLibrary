.class Lcom/kwad/sdk/api/loader/Loader$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwad/sdk/api/loader/Loader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/api/loader/Loader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/api/loader/Loader;-><init>(Lcom/kwad/sdk/api/loader/Loader$1;)V

    sput-object v0, Lcom/kwad/sdk/api/loader/Loader$a;->a:Lcom/kwad/sdk/api/loader/Loader;

    return-void
.end method

.method static synthetic a()Lcom/kwad/sdk/api/loader/Loader;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/api/loader/Loader$a;->a:Lcom/kwad/sdk/api/loader/Loader;

    return-object v0
.end method
