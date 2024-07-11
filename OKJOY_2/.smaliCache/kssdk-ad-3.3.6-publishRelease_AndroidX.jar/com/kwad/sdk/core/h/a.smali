.class public Lcom/kwad/sdk/core/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/core/SpeedLimitApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/h/b;->a()Lcom/kwad/sdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/h/b;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
