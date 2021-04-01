.class public Lcom/tencent/turingfd/sdk/ams/ad/final;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/final$do;
    }
.end annotation


# static fields
.field public static final Ab:[Ljava/lang/String;

.field public static final mb:Ljava/lang/String;

.field public static final vb:Ljava/lang/String;

.field public static final wb:Ljava/lang/String;

.field public static final xb:Ljava/lang/String;

.field public static final yb:Ljava/lang/String;

.field public static zb:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->G:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->mb:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->H:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->vb:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->I:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->wb:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->J:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->xb:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->K:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->yb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->zb:J

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^/data/user/\\d+$"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^/data/data$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->Ab:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_12
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_5c

    move-object v2, v0

    .line 7
    :goto_19
    :try_start_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2c} :catch_61

    .line 9
    :goto_2c
    const-string v0, "_"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, -0x1

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 15
    :cond_48
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :catch_5c
    move-exception v0

    const-string v0, ""

    move-object v2, v0

    goto :goto_19

    .line 8
    :catch_61
    move-exception v0

    const-string v0, ""

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_135

    .line 5
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const/4 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    .line 25
    :goto_25
    iget-boolean v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    if-eqz v1, :cond_1c6

    .line 26
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->ub:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-static {v2, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v1

    .line 29
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->mb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->wb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 31
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->ub:Ljava/lang/String;

    .line 32
    iput-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 33
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 35
    :goto_5b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_1ce

    .line 36
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    .line 75
    :goto_69
    iget-boolean v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    const/4 v3, 0x1

    .line 76
    invoke-static {v0, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v2

    .line 77
    iget-boolean v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    if-eqz v0, :cond_97

    .line 78
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->mb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->xb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 80
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->ub:Ljava/lang/String;

    .line 81
    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 82
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2fd

    .line 84
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const/4 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    .line 112
    :goto_a5
    iget-boolean v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    const/4 v3, 0x2

    .line 113
    invoke-static {v2, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v1

    .line 114
    iget-boolean v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    if-eqz v2, :cond_d3

    .line 115
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->mb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/final;->yb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 117
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->ub:Ljava/lang/String;

    .line 118
    iput-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 119
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    if-lez v1, :cond_109

    .line 120
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/final;->mb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/final;->vb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 123
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/final;->zb:J

    .line 125
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 126
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 127
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_114

    .line 6
    :cond_135
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_145

    .line 7
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const/4 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_25

    :cond_145
    const/4 v0, 0x1

    .line 8
    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/final;->Ab:[Ljava/lang/String;

    array-length v10, v9

    const/4 v1, 0x0

    :goto_14a
    if-ge v1, v10, :cond_161

    aget-object v11, v9, v1

    .line 9
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 11
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1a0

    const/4 v0, 0x0

    .line 12
    :cond_161
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    const/4 v9, 0x6

    .line 14
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const-string v9, "/data/data/"

    .line 15
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a3

    array-length v9, v4

    const/4 v10, 0x4

    if-lt v9, v10, :cond_1a3

    const/4 v9, 0x3

    aget-object v9, v4, v9

    .line 16
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a3

    const/4 v1, 0x3

    .line 17
    aget-object v1, v4, v1

    .line 20
    :cond_188
    :goto_188
    if-eqz v0, :cond_1bc

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bc

    .line 22
    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/final;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    invoke-direct {v1, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_25

    .line 11
    :cond_1a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    .line 17
    :cond_1a3
    const-string v9, "/data/user/"

    .line 18
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_188

    array-length v3, v4

    const/4 v9, 0x5

    if-lt v3, v9, :cond_188

    const/4 v3, 0x4

    aget-object v3, v4, v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_188

    const/4 v1, 0x4

    .line 20
    aget-object v1, v4, v1

    goto :goto_188

    .line 24
    :cond_1bc
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const-string v3, ""

    invoke-direct {v1, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_25

    .line 33
    :cond_1c6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-static {v2, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v0

    goto/16 :goto_5b

    .line 36
    :cond_1ce
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 37
    :try_start_1d1
    new-instance v2, Ljava/io/FileReader;
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1d3} :catch_2b8
    .catchall {:try_start_1d1 .. :try_end_1d3} :catchall_2b3

    const-string v10, "/proc/self/maps"

    :try_start_1d5
    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1d8
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_1d8} :catch_2b8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_2b3

    .line 38
    :try_start_1d8
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_1d8 .. :try_end_1dd} :catch_3fa
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_2ad

    .line 39
    :cond_1dd
    :try_start_1dd
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24c

    const/16 v10, 0x2f

    .line 40
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1dd

    .line 41
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 42
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1f6
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_1f6} :catch_2a4
    .catchall {:try_start_1dd .. :try_end_1f6} :catchall_298

    const/16 v11, 0x17

    if-ge v10, v11, :cond_27a

    const-string v10, "/data/dalvik-cache/"

    .line 43
    :try_start_1fc
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1ff
    .catch Ljava/lang/Throwable; {:try_start_1fc .. :try_end_1ff} :catch_2a4
    .catchall {:try_start_1fc .. :try_end_1ff} :catchall_298

    move-result v10

    if-eqz v10, :cond_1dd

    const-string v10, ".apk@classes.dex"

    .line 44
    :try_start_204
    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1dd

    const/16 v10, 0x2f

    .line 45
    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1dd

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0xc

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x40

    const/16 v11, 0x2f

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_224
    .catch Ljava/lang/Throwable; {:try_start_204 .. :try_end_224} :catch_2a4
    .catchall {:try_start_204 .. :try_end_224} :catchall_298

    move-result-object v4

    const-string v10, "/data/app/"

    .line 47
    :try_start_227
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1dd

    .line 48
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/Throwable; {:try_start_227 .. :try_end_232} :catch_2a4
    .catchall {:try_start_227 .. :try_end_232} :catchall_298

    const-string v4, "base.apk"

    .line 49
    :try_start_234
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    .line 50
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_24c

    .line 51
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_234 .. :try_end_24b} :catch_2a4
    .catchall {:try_start_234 .. :try_end_24b} :catchall_298

    move-result-object v1

    .line 58
    :cond_24c
    :goto_24c
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 63
    :goto_252
    const/4 v3, 0x0

    .line 64
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_266

    const-string v4, "-"

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_2bb

    :cond_266
    move-object v1, v2

    move v2, v3

    .line 71
    :goto_268
    if-eqz v2, :cond_2f4

    .line 72
    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/final;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    invoke-direct {v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_69

    .line 52
    :cond_275
    :try_start_275
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_278
    .catch Ljava/lang/Throwable; {:try_start_275 .. :try_end_278} :catch_2a4
    .catchall {:try_start_275 .. :try_end_278} :catchall_298

    move-result-object v1

    goto :goto_24c

    :cond_27a
    const-string v10, "/data/app/"

    .line 53
    :try_start_27c
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_27f
    .catch Ljava/lang/Throwable; {:try_start_27c .. :try_end_27f} :catch_2a4
    .catchall {:try_start_27c .. :try_end_27f} :catchall_298

    move-result v10

    if-eqz v10, :cond_1dd

    const-string v10, "/base.odex"

    .line 54
    :try_start_284
    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_287
    .catch Ljava/lang/Throwable; {:try_start_284 .. :try_end_287} :catch_2a4
    .catchall {:try_start_284 .. :try_end_287} :catchall_298

    move-result v10

    if-eqz v10, :cond_1dd

    const-string v10, "/"

    .line 55
    :try_start_28c
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    array-length v10, v4

    const/4 v11, 0x7

    if-lt v10, v11, :cond_1dd

    const/4 v10, 0x3

    .line 57
    aget-object v1, v4, v10
    :try_end_297
    .catch Ljava/lang/Throwable; {:try_start_28c .. :try_end_297} :catch_2a4
    .catchall {:try_start_28c .. :try_end_297} :catchall_298

    goto :goto_24c

    .line 59
    :catchall_298
    move-exception v0

    move-object v1, v3

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    .line 60
    :goto_29d
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    throw v2

    .line 59
    :catch_2a4
    move-exception v4

    move-object v4, v3

    .line 62
    :goto_2a6
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    .line 63
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/io/Closeable;)V

    goto :goto_252

    .line 59
    :catchall_2ad
    move-exception v0

    move-object v1, v4

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto :goto_29d

    :catchall_2b3
    move-exception v0

    move-object v1, v4

    move-object v2, v0

    move-object v0, v3

    goto :goto_29d

    .line 61
    :catch_2b8
    move-exception v2

    move-object v2, v3

    goto :goto_2a6

    .line 66
    :cond_2bb
    const/4 v9, 0x0

    .line 67
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_266

    .line 69
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2f2

    .line 71
    :goto_2ea
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto/16 :goto_268

    :cond_2f2
    move-object v1, v2

    .line 70
    goto :goto_2ea

    .line 74
    :cond_2f4
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_69

    .line 85
    :cond_2fd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 86
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "HUAWEI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_372

    .line 87
    :try_start_30d
    const-string v0, "android.os.UserManager"
    :try_end_30f
    .catch Ljava/lang/Throwable; {:try_start_30d .. :try_end_30f} :catch_3f3

    :try_start_30f
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_316
    .catch Ljava/lang/Throwable; {:try_start_30f .. :try_end_316} :catch_3f7

    move-result-object v0

    const-string v9, "USER_SERVICE"

    :try_start_319
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v9, 0x1

    .line 89
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_32a
    .catch Ljava/lang/Throwable; {:try_start_319 .. :try_end_32a} :catch_3f7

    move-result-object v0

    if-nez v0, :cond_359

    .line 94
    :cond_32d
    :goto_32d
    const-string v0, ""

    .line 95
    :goto_32f
    :try_start_32f
    new-instance v4, Ljava/lang/String;
    :try_end_331
    .catch Ljava/lang/Throwable; {:try_start_32f .. :try_end_331} :catch_3f3

    const-string v9, "5YiG6Lqr5bqU55So"

    const/4 v10, 0x0

    :try_start_334
    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3fd

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_344
    .catch Ljava/lang/Throwable; {:try_start_334 .. :try_end_344} :catch_3f3

    move-result v0

    if-eqz v0, :cond_3fd

    const/4 v0, 0x1

    const-string v1, "HuaWei"

    .line 97
    :try_start_34a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34d
    .catch Ljava/lang/Throwable; {:try_start_34a .. :try_end_34d} :catch_3eb

    .line 111
    :goto_34d
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/final$do;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/final$do;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_a5

    .line 91
    :cond_359
    const-string v9, "getUserName"

    const/4 v10, 0x0

    .line 92
    :try_start_35c
    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_32d

    const/4 v9, 0x1

    .line 93
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v9, 0x0

    .line 94
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_371
    .catch Ljava/lang/Throwable; {:try_start_35c .. :try_end_371} :catch_3f7

    goto :goto_32f

    .line 98
    :cond_372
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "xiaomi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_389

    .line 99
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/final;->q()Z

    move-result v0

    if-eqz v0, :cond_3fd

    const/4 v0, 0x1

    const-string v1, "XiaoMi"

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34d

    .line 101
    :cond_389
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "oppo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 102
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/final;->q()Z

    move-result v0

    if-eqz v0, :cond_3fd

    const/4 v0, 0x1

    const-string v1, "OPPO"

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34d

    .line 104
    :cond_3a0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "vivo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3fd

    .line 105
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/final;->q()Z

    move-result v0

    if-eqz v0, :cond_3b7

    const/4 v0, 0x1

    const-string v1, "VIVO_A"

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34d

    .line 107
    :cond_3b7
    :try_start_3b7
    new-instance v0, Ljava/lang/String;
    :try_end_3b9
    .catch Ljava/lang/Throwable; {:try_start_3b7 .. :try_end_3b9} :catch_3f3

    const-string v4, "/proc/self/mountinfo"

    :try_start_3bb
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d2
    .catch Ljava/lang/Throwable; {:try_start_3bb .. :try_end_3d2} :catch_3f3

    move-result-object v4

    const-string v9, "_cloned"

    :try_start_3d5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3e0
    .catch Ljava/lang/Throwable; {:try_start_3d5 .. :try_end_3e0} :catch_3f3

    move-result v0

    if-eqz v0, :cond_3fd

    const/4 v0, 0x1

    const-string v1, "VIVO_B"

    .line 110
    :try_start_3e6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e9
    .catch Ljava/lang/Throwable; {:try_start_3e6 .. :try_end_3e9} :catch_3eb

    goto/16 :goto_34d

    .line 97
    :catch_3eb
    move-exception v1

    goto/16 :goto_34d

    .line 130
    :cond_3ee
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :catch_3f3
    move-exception v0

    move v0, v1

    goto/16 :goto_34d

    :catch_3f7
    move-exception v0

    goto/16 :goto_32d

    .line 59
    :catch_3fa
    move-exception v3

    goto/16 :goto_2a6

    :cond_3fd
    move v0, v1

    goto/16 :goto_34d
.end method

.method public static p()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/tencent/turingfd/sdk/ams/ad/final;->zb:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .registers 3

    .prologue
    const/16 v0, 0x3e7

    .line 1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x186a0

    div-int/2addr v1, v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_e

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_d
    return v0

    :catch_e
    move-exception v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d
.end method
