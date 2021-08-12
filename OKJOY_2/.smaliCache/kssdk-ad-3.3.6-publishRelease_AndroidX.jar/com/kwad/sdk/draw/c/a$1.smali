.class Lcom/kwad/sdk/draw/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/b;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/c/a$1;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$1;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/draw/c/a;J)V

    return-void
.end method
