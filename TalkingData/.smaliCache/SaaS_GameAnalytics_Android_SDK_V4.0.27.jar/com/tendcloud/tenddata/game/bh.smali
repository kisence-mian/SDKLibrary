.class public Lcom/tendcloud/tenddata/game/bh;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 193
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 194
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 196
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_23

    .line 197
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_25

    return-object p0

    .line 199
    :cond_23
    goto :goto_10

    .line 202
    :cond_24
    goto :goto_26

    .line 200
    :catchall_25
    move-exception p0

    .line 203
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .registers 8

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :try_start_5
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 46
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_5f

    aget-object v4, v1, v3

    .line 47
    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_60

    if-eqz v5, :cond_5c

    .line 50
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_26} :catch_5b
    .catchall {:try_start_1e .. :try_end_26} :catchall_60

    .line 53
    nop

    .line 55
    :try_start_27
    new-instance v5, Lcom/tendcloud/tenddata/game/an;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/tendcloud/tenddata/game/an;-><init>(I)V

    .line 56
    iget v6, v5, Lcom/tendcloud/tenddata/game/an;->b:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_3a

    iget v6, v5, Lcom/tendcloud/tenddata/game/an;->b:I

    const/16 v7, 0x270f

    if-gt v6, v7, :cond_3a

    .line 58
    goto :goto_5c

    .line 59
    :cond_3a
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 61
    goto :goto_5c

    .line 62
    :cond_45
    iget-object v5, v5, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 63
    goto :goto_5c

    .line 65
    :cond_50
    new-instance v5, Lcom/tendcloud/tenddata/game/an;

    invoke-direct {v5, v4}, Lcom/tendcloud/tenddata/game/an;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_59

    .line 74
    goto :goto_5c

    .line 66
    :catchall_59
    move-exception v4

    goto :goto_5c

    .line 51
    :catch_5b
    move-exception v4

    .line 46
    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 81
    :cond_5f
    goto :goto_61

    .line 77
    :catchall_60
    move-exception v1

    .line 82
    :goto_61
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 7

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_60

    .line 97
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_60

    aget-object v3, v0, v2

    .line 98
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_61

    if-eqz v4, :cond_5d

    .line 101
    :try_start_20
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_28} :catch_5c
    .catchall {:try_start_20 .. :try_end_28} :catchall_61

    .line 104
    nop

    .line 106
    :try_start_29
    new-instance v4, Lcom/tendcloud/tenddata/game/an;

    invoke-direct {v4, v3}, Lcom/tendcloud/tenddata/game/an;-><init>(I)V

    .line 109
    iget-boolean v3, v4, Lcom/tendcloud/tenddata/game/an;->a:Z

    if-nez v3, :cond_33

    .line 111
    goto :goto_5d

    .line 112
    :cond_33
    iget v3, v4, Lcom/tendcloud/tenddata/game/an;->b:I

    const/16 v5, 0x3e8

    if-lt v3, v5, :cond_40

    iget v3, v4, Lcom/tendcloud/tenddata/game/an;->b:I

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_40

    .line 114
    goto :goto_5d

    .line 115
    :cond_40
    iget-object v3, v4, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 117
    goto :goto_5d

    .line 118
    :cond_4b
    iget-object v3, v4, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 119
    goto :goto_5d

    .line 122
    :cond_56
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_5a

    .line 131
    goto :goto_5d

    .line 123
    :catchall_5a
    move-exception v3

    goto :goto_5d

    .line 102
    :catch_5c
    move-exception v3

    .line 97
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 139
    :cond_60
    goto :goto_62

    .line 135
    :catchall_61
    move-exception v0

    .line 140
    :goto_62
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 7

    .line 170
    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_32

    .line 171
    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->a()Ljava/util/List;

    move-result-object p0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/an;

    .line 174
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    iget v5, v2, Lcom/tendcloud/tenddata/game/an;->d:I

    invoke-direct {v3, v4, v5, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 177
    iget v2, v2, Lcom/tendcloud/tenddata/game/an;->b:I

    iput v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 179
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_14

    .line 181
    :cond_31
    return-object v1

    .line 183
    :cond_32
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 184
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    return-object p0

    .line 185
    :catchall_3f
    move-exception p0

    .line 188
    return-object v0
.end method

.method public static b()Z
    .registers 4

    .line 148
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->a()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/an;

    .line 151
    iget v3, v2, Lcom/tendcloud/tenddata/game/an;->d:I

    if-ne v3, v1, :cond_22

    iget-boolean v2, v2, Lcom/tendcloud/tenddata/game/an;->a:Z
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_24

    if-eqz v2, :cond_22

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_22
    goto :goto_c

    .line 157
    :cond_23
    goto :goto_25

    .line 155
    :catchall_24
    move-exception v0

    .line 158
    :goto_25
    const/4 v0, 0x0

    return v0
.end method
