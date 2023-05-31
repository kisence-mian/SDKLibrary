.class public Lcom/tencent/smtt/sdk/ReaderWizard;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;

.field private b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    return-void
.end method

.method private static a()Lcom/tencent/smtt/export/external/DexLoader;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/o;->c()Lcom/tencent/smtt/sdk/bh;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bh;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public static getResDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "getResDrawable"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_26

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_25
.end method

.method public static getResString(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "getResString"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_27

    check-cast v0, Ljava/lang/String;

    :goto_26
    return-object v0

    :cond_27
    move-object v0, v1

    goto :goto_26
.end method

.method public static isSupportCurrentPlatform(Landroid/content/Context;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "isSupportCurrentPlatform"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public static isSupportExt(Ljava/lang/String;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "isSupportExt"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method


# virtual methods
.method public checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 14

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_11

    const-string v0, "ReaderWizard"

    const-string v1, "checkPlugin:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "checkPlugin"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v4, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v7

    const-class v1, Ljava/lang/Boolean;

    aput-object v1, v4, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_43

    const-string v0, "ReaderWizard"

    const-string v1, "Unexpect return value type of call checkPlugin!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_10

    :cond_43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10
.end method

.method public destroy(Ljava/lang/Object;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_a

    if-nez p1, :cond_12

    :cond_a
    const-string v0, "ReaderWizard"

    const-string v1, "destroy:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "destroy"

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public doCommand(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_10

    const-string v0, "ReaderWizard"

    const-string v1, "doCommand:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "doCommand"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v4, v7

    const-class v1, Ljava/lang/Object;

    aput-object v1, v4, v8

    const-class v1, Ljava/lang/Object;

    aput-object v1, v4, v9

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v7

    aput-object p3, v5, v8

    aput-object p4, v5, v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public getTbsReader()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.reader.TbsReader"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initTbsReader(Ljava/lang/Object;Landroid/content/Context;)Z
    .registers 12

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_a

    if-nez p1, :cond_13

    :cond_a
    const-string v0, "ReaderWizard"

    const-string v1, "initTbsReader:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "init"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v4, v6

    const-class v1, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v1, v4, v7

    const-class v1, Ljava/lang/Object;

    aput-object v1, v4, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v1, v5, v7

    aput-object p0, v5, v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_43

    const-string v0, "ReaderWizard"

    const-string v1, "Unexpect return value type of call initTbsReader!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_12

    :cond_43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_12
.end method

.method public onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;->onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onSizeChanged(Ljava/lang/Object;II)V
    .registers 12

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_f

    const-string v0, "ReaderWizard"

    const-string v1, "onSizeChanged:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "onSizeChanged"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v4, v6

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v4, v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public openFile(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/FrameLayout;)Z
    .registers 14

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_11

    const-string v0, "ReaderWizard"

    const-string v1, "openFile:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "openFile"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v4, v6

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v4, v7

    const-class v1, Landroid/widget/FrameLayout;

    aput-object v1, v4, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    aput-object p4, v5, v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_3f

    const-string v0, "ReaderWizard"

    const-string v1, "Unexpect return value type of call openFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_10

    :cond_3f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10
.end method

.method public userStatistics(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_e

    const-string v0, "ReaderWizard"

    const-string v1, "userStatistics:Unexpect null object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "userStatistics"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method
