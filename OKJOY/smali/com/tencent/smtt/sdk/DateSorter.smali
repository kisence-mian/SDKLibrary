.class public Lcom/tencent/smtt/sdk/DateSorter;
.super Ljava/lang/Object;


# static fields
.field public static DAY_COUNT:I


# instance fields
.field private a:Landroid/webkit/DateSorter;

.field private b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/smtt/sdk/DateSorter;->a()Z

    const/4 v0, 0x5

    sput v0, Lcom/tencent/smtt/sdk/DateSorter;->DAY_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->h(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    goto :goto_19
.end method

.method private static a()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method


# virtual methods
.method public getBoundary(I)J
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getBoundary(I)J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1}, Landroid/webkit/DateSorter;->getBoundary(I)J

    move-result-wide v0

    goto :goto_12
.end method

.method public getIndex(J)I
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getIndex(J)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v0

    goto :goto_12
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
