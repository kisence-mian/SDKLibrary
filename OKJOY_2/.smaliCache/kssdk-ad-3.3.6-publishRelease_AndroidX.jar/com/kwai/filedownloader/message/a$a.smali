.class public Lcom/kwai/filedownloader/message/a$a;
.super Lcom/kwai/filedownloader/message/MessageSnapshot;

# interfaces
.implements Lcom/kwai/filedownloader/message/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/kwai/filedownloader/message/MessageSnapshot;


# direct methods
.method public constructor <init>(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 6

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;-><init>(I)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_11

    iput-object p1, p0, Lcom/kwai/filedownloader/message/a$a;->b:Lcom/kwai/filedownloader/message/MessageSnapshot;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "can\'t create the block complete message for id[%d], status[%d]"

    invoke-static {p1, v1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()B
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public c_()Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/a$a;->b:Lcom/kwai/filedownloader/message/MessageSnapshot;

    return-object v0
.end method
