.class public Lcom/kwai/filedownloader/services/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/h0/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Lcom/kwai/filedownloader/services/b;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1a

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const-string v1, "%sp%s@dir"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const-string v1, "%sp%s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_19
.end method
