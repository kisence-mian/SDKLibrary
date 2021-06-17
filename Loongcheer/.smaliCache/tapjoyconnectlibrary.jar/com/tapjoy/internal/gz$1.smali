.class final Lcom/tapjoy/internal/gz$1;
.super Lcom/tapjoy/internal/io;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gz;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gz;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/tapjoy/internal/gz$1;->a:Lcom/tapjoy/internal/gz;

    invoke-direct {p0}, Lcom/tapjoy/internal/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/gz$1;->a:Lcom/tapjoy/internal/gz;

    .line 1021
    iget-object v0, v0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    .line 204
    invoke-virtual {v0}, Lcom/tapjoy/internal/hn;->b()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
