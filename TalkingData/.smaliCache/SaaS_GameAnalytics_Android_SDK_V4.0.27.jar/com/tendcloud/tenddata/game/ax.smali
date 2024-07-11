.class final Lcom/tendcloud/tenddata/game/ax;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    .line 476
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 477
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_31

    const-string v1, "cpu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 480
    const/4 v1, 0x3

    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2f

    const/16 v3, 0x39

    if-le v2, v3, :cond_29

    goto :goto_2c

    .line 480
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 482
    :cond_2c
    :goto_2c
    return v0

    .line 485
    :cond_2d
    const/4 p1, 0x1

    return p1

    .line 488
    :catchall_2f
    move-exception p1

    goto :goto_32

    .line 490
    :cond_31
    nop

    .line 491
    :goto_32
    return v0
.end method
