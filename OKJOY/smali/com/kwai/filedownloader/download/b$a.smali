.class final Lcom/kwai/filedownloader/download/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/download/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/download/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/b;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/download/b$a;->a:Lcom/kwai/filedownloader/download/b;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/download/b;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/download/b$a;->a:Lcom/kwai/filedownloader/download/b;

    return-object v0
.end method
