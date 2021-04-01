.class public Lcom/tencent/turingfd/sdk/ams/ad/float;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Bb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Cb:[Ljava/lang/String;

.field public static Db:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/turingfd/sdk/ams/ad/public;",
            ">;"
        }
    .end annotation
.end field

.field public static final Eb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Cb:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Db:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->ya:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->za:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Aa:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ba:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ca:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Da:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ea:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Fa:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ga:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ha:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ia:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->Ja:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Eb:Ljava/util/Set;

    .line 17
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/float;->Eb:Ljava/util/Set;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->xa:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ","

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 7
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/turingfd/sdk/ams/ad/native;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/native;

    .line 10
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->uid:I

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_9

    .line 11
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "logcat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 12
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 13
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "adbd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 14
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 15
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "grep"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 16
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "/system/bin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 17
    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v4, "/sbin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 18
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_67
    return-object v1
.end method
