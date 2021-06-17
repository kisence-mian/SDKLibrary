.class public final Lcom/efs/sdk/base/a/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/efs/sdk/base/a/h/g;->c:J

    return-void
.end method

.method public static a()I
    .registers 1

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7

    .line 52
    nop

    .line 53
    nop

    .line 55
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "/cmdline"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_4a

    .line 58
    :try_start_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    :goto_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-lez v0, :cond_37

    .line 60
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 62
    :cond_37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_47

    .line 69
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    .line 72
    :goto_41
    goto :goto_5f

    .line 71
    :catchall_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41

    .line 64
    :catchall_47
    move-exception p0

    move-object v0, v1

    goto :goto_4b

    :catchall_4a
    move-exception p0

    .line 65
    :goto_4b
    :try_start_4b
    const-string v1, "efs.base"

    const-string v2, "get process name error"

    invoke-static {v1, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_60

    .line 67
    if-eqz v0, :cond_5d

    .line 69
    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 72
    :goto_57
    goto :goto_5d

    .line 71
    :catchall_58
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_57

    .line 75
    :cond_5d
    :goto_5d
    const-string p0, ""

    :goto_5f
    return-object p0

    .line 67
    :catchall_60
    move-exception p0

    if-eqz v0, :cond_6b

    .line 69
    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 72
    goto :goto_6b

    .line 71
    :catchall_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_6b
    :goto_6b
    goto :goto_6d

    :goto_6c
    throw p0

    :goto_6d
    goto :goto_6c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .line 124
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2085
    sget-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2b

    .line 2089
    :cond_11
    sget-wide v3, Lcom/efs/sdk/base/a/h/g;->c:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/efs/sdk/base/a/h/g;->c:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-lez v1, :cond_28

    goto :goto_2a

    .line 2092
    :cond_28
    const/4 v2, 0x1

    goto :goto_2c

    .line 2090
    :cond_2a
    :goto_2a
    goto :goto_2c

    .line 2086
    :cond_2b
    :goto_2b
    nop

    .line 1102
    :goto_2c
    if-nez v2, :cond_6d

    .line 1104
    sget-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    if-eqz v1, :cond_36

    .line 1105
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_3d

    .line 1107
    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    .line 1109
    :goto_3d
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1111
    if-eqz p0, :cond_67

    .line 1112
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 1113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1114
    sget-object v2, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    goto :goto_4f

    .line 1117
    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/efs/sdk/base/a/h/g;->c:J

    .line 1119
    :cond_6d
    sget-object p0, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_78

    .line 125
    return p0

    .line 126
    :catchall_78
    move-exception p0

    .line 127
    const-string p1, "efs.base"

    const-string v1, "Process exist judge error"

    invoke-static {p1, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 37
    sget-object v0, Lcom/efs/sdk/base/a/h/g;->a:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/efs/sdk/base/a/h/g;->a:Ljava/lang/String;

    .line 43
    :cond_12
    return-object v0
.end method
