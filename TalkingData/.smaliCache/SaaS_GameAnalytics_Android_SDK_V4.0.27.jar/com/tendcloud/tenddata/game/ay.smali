.class public Lcom/tendcloud/tenddata/game/ay;
.super Ljava/io/File;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ay$b;,
        Lcom/tendcloud/tenddata/game/ay$a;,
        Lcom/tendcloud/tenddata/game/ay$d;,
        Lcom/tendcloud/tenddata/game/ay$c;
    }
.end annotation


# instance fields
.field public final content:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay;->content:Ljava/lang/String;

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ay;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay;->content:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 40
    nop

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_45

    .line 44
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    :goto_17
    if-eqz p0, :cond_37

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "\n"

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/high16 v3, 0x6400000

    if-gt p0, v3, :cond_2f

    .line 44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    .line 48
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Input stream more than 100 MB size limit"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_42

    .line 56
    nop

    .line 58
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    .line 63
    goto :goto_41

    .line 59
    :catchall_40
    move-exception v0

    .line 51
    :goto_41
    return-object p0

    .line 52
    :catchall_42
    move-exception p0

    move-object v1, v2

    goto :goto_46

    :catchall_45
    move-exception p0

    .line 54
    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_52

    .line 56
    if-eqz v1, :cond_51

    .line 58
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    .line 63
    goto :goto_51

    .line 59
    :catchall_50
    move-exception v0

    .line 54
    :cond_51
    :goto_51
    return-object p0

    .line 56
    :catchall_52
    move-exception p0

    if-eqz v1, :cond_5a

    .line 58
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    .line 63
    goto :goto_5a

    .line 59
    :catchall_59
    move-exception v0

    .line 63
    :cond_5a
    :goto_5a
    goto :goto_5c

    :goto_5b
    throw p0

    :goto_5c
    goto :goto_5b
.end method


# virtual methods
.method public length()J
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ay;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
