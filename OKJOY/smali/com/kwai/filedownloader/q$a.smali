.class final Lcom/kwai/filedownloader/q$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/q;

    invoke-direct {v0}, Lcom/kwai/filedownloader/q;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/q$a;->a:Lcom/kwai/filedownloader/q;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/q;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/q$a;->a:Lcom/kwai/filedownloader/q;

    return-object v0
.end method
