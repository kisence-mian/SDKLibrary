.class final Lcom/kwai/filedownloader/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/m;-><init>(Lcom/kwai/filedownloader/m$1;)V

    sput-object v0, Lcom/kwai/filedownloader/m$a;->a:Lcom/kwai/filedownloader/m;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/m;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/m$a;->a:Lcom/kwai/filedownloader/m;

    return-object v0
.end method
