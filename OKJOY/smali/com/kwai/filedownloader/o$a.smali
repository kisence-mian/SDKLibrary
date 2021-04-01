.class public Lcom/kwai/filedownloader/o$a;
.super Lcom/kwai/filedownloader/e0/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/e0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method
