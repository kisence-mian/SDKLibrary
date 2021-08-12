.class final Lcom/kwad/sdk/core/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwad/sdk/core/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/a;-><init>(Lcom/kwad/sdk/core/a$1;)V

    sput-object v0, Lcom/kwad/sdk/core/a$a;->a:Lcom/kwad/sdk/core/a;

    return-void
.end method

.method static synthetic a()Lcom/kwad/sdk/core/a;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/a$a;->a:Lcom/kwad/sdk/core/a;

    return-object v0
.end method
