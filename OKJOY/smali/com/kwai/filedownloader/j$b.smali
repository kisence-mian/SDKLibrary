.class final Lcom/kwai/filedownloader/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/j;-><init>(Lcom/kwai/filedownloader/j$a;)V

    sput-object v0, Lcom/kwai/filedownloader/j$b;->a:Lcom/kwai/filedownloader/j;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/j;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/j$b;->a:Lcom/kwai/filedownloader/j;

    return-object v0
.end method
