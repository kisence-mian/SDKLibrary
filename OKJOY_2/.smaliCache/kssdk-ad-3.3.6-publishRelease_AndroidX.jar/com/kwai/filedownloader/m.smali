.class public Lcom/kwai/filedownloader/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/t;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/f/e;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/kwai/filedownloader/n;

    invoke-direct {v0}, Lcom/kwai/filedownloader/n;-><init>()V

    goto :goto_16

    :cond_11
    new-instance v0, Lcom/kwai/filedownloader/o;

    invoke-direct {v0}, Lcom/kwai/filedownloader/o;-><init>()V

    :goto_16
    iput-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/m$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/m;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/m$a;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/kwai/filedownloader/services/e$a;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    instance-of v0, v0, Lcom/kwai/filedownloader/n;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    check-cast v0, Lcom/kwai/filedownloader/services/e$a;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->a(I)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)Z
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/kwai/filedownloader/t;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)Z

    move-result v1

    return v1
.end method

.method public b(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->b(I)B

    move-result p1

    return p1
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->c()Z

    move-result v0

    return v0
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/m;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->c(I)Z

    move-result p1

    return p1
.end method
