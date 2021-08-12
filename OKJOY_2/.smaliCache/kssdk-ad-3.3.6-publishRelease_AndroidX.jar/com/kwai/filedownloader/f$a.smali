.class Lcom/kwai/filedownloader/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/f;-><init>(Lcom/kwai/filedownloader/f$1;)V

    sput-object v0, Lcom/kwai/filedownloader/f$a;->a:Lcom/kwai/filedownloader/f;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/f;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/f$a;->a:Lcom/kwai/filedownloader/f;

    return-object v0
.end method
