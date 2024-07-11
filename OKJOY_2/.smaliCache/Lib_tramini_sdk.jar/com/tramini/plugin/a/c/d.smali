.class public Lcom/tramini/plugin/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tramini/plugin/a/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/tramini/plugin/a/c/d;)I
    .registers 6

    .line 46
    iget-wide v0, p0, Lcom/tramini/plugin/a/c/d;->c:J

    iget-wide v2, p1, Lcom/tramini/plugin/a/c/d;->c:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_a

    .line 47
    const/4 p1, 0x1

    return p1

    .line 49
    :cond_a
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 10
    check-cast p1, Lcom/tramini/plugin/a/c/d;

    .line 1046
    iget-wide v0, p0, Lcom/tramini/plugin/a/c/d;->c:J

    iget-wide v2, p1, Lcom/tramini/plugin/a/c/d;->c:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    .line 1047
    const/4 p1, 0x1

    return p1

    .line 1049
    :cond_c
    const/4 p1, -0x1

    .line 10
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 33
    instance-of v0, p1, Lcom/tramini/plugin/a/c/d;

    if-eqz v0, :cond_16

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    .line 35
    return v0

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/tramini/plugin/a/c/d;

    iget-object v2, v2, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 37
    return v0

    .line 41
    :cond_16
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 25
    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/tramini/plugin/a/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [ id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tramini/plugin/a/c/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
