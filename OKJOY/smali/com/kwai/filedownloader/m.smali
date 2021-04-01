.class public Lcom/kwai/filedownloader/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/m$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/u;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/h0/e;->d:Z

    if-eqz v0, :cond_13

    new-instance v0, Lcom/kwai/filedownloader/n;

    invoke-direct {v0}, Lcom/kwai/filedownloader/n;-><init>()V

    :goto_10
    iput-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    return-void

    :cond_13
    new-instance v0, Lcom/kwai/filedownloader/o;

    invoke-direct {v0}, Lcom/kwai/filedownloader/o;-><init>()V

    goto :goto_10
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/m$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/m;-><init>()V

    return-void
.end method

.method public static b()Lcom/kwai/filedownloader/services/e$a;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    instance-of v0, v0, Lcom/kwai/filedownloader/n;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    check-cast v0, Lcom/kwai/filedownloader/services/e$a;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static c()Lcom/kwai/filedownloader/m;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/m$b;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/u;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    invoke-interface {v0}, Lcom/kwai/filedownloader/u;->a()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/u;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)Z
    .registers 20

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/kwai/filedownloader/u;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)Z

    move-result v0

    return v0
.end method

.method public b(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/u;->b(I)B

    move-result v0

    return v0
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/u;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/u;->c(I)Z

    move-result v0

    return v0
.end method
