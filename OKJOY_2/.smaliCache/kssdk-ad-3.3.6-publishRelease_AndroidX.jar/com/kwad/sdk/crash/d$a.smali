.class Lcom/kwad/sdk/crash/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/crash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwad/sdk/crash/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/crash/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/crash/d;-><init>(Lcom/kwad/sdk/crash/d$1;)V

    sput-object v0, Lcom/kwad/sdk/crash/d$a;->a:Lcom/kwad/sdk/crash/d;

    return-void
.end method

.method static synthetic a()Lcom/kwad/sdk/crash/d;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/crash/d$a;->a:Lcom/kwad/sdk/crash/d;

    return-object v0
.end method
