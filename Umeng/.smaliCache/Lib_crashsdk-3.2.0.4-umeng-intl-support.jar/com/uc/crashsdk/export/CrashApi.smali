.class public Lcom/uc/crashsdk/export/CrashApi;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/uc/crashsdk/export/CrashApi;

.field private static c:Z

.field private static d:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;

    .line 855
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/export/CrashApi;->c:Z

    .line 876
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/export/CrashApi;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;ZZZ)V
    .registers 9

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CrashApi;->b:Z

    .line 674
    invoke-static {p1}, Lcom/uc/crashsdk/export/CrashApi;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 675
    invoke-static {p1}, Lcom/uc/crashsdk/export/CrashApi;->b(Landroid/content/Context;)V

    .line 677
    sput-boolean p6, Lcom/uc/crashsdk/b;->g:Z

    .line 678
    sput-boolean p7, Lcom/uc/crashsdk/b;->h:Z

    .line 680
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result p6

    const/4 p7, 0x1

    if-eqz p6, :cond_35

    .line 681
    invoke-static {p1}, Lcom/uc/crashsdk/export/CrashApi;->b(Landroid/content/Context;)V

    invoke-static {p1, p2, p3, p4}, Lcom/uc/crashsdk/export/CrashApi;->a(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;)V

    if-eqz p5, :cond_23

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->a()V

    :cond_23
    sget-boolean p1, Lcom/uc/crashsdk/b;->g:Z

    if-eqz p1, :cond_34

    const-string p1, "libcrashsdk.so"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    sput-boolean p7, Lcom/uc/crashsdk/b;->f:Z

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->b()V

    .line 683
    :cond_34
    return-void

    .line 687
    :cond_35
    const-string p6, "crashsdk"

    if-eqz p2, :cond_aa

    if-eqz p3, :cond_aa

    .line 691
    invoke-static {p2}, Lcom/uc/crashsdk/g;->a(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 694
    :try_start_3e
    iget-boolean v0, p2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    invoke-static {v0}, Lcom/uc/crashsdk/e;->d(Z)Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v0, p7}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Z)V

    .line 696
    invoke-static {p1, p2, p3, p4}, Lcom/uc/crashsdk/export/CrashApi;->a(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;)V
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4b

    .line 701
    goto :goto_4f

    .line 697
    :catchall_4b
    move-exception p2

    invoke-static {p2}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/Throwable;)V

    .line 704
    :goto_4f
    if-eqz p5, :cond_5a

    .line 705
    :try_start_51
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->a()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_5a

    .line 707
    :catchall_55
    move-exception p2

    invoke-static {p2}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/Throwable;)V

    goto :goto_5b

    .line 711
    :cond_5a
    :goto_5a
    nop

    .line 714
    :goto_5b
    :try_start_5b
    invoke-static {}, Lcom/uc/crashsdk/b;->J()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->a()V

    invoke-static {}, Lcom/uc/crashsdk/a/d;->a()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->j()V
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_68

    .line 717
    goto :goto_6c

    .line 715
    :catchall_68
    move-exception p2

    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 720
    :goto_6c
    :try_start_6c
    invoke-static {p1}, Lcom/uc/crashsdk/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 721
    const-string p1, "registerLifecycleCallbacks failed!"

    invoke-static {p6, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_78

    .line 725
    :cond_77
    goto :goto_7c

    .line 723
    :catchall_78
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 728
    :goto_7c
    :try_start_7c
    invoke-static {}, Lcom/uc/crashsdk/a;->n()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8b

    :try_start_7f
    invoke-static {}, Lcom/uc/crashsdk/e;->z()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception p1

    :try_start_84
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V

    :goto_87
    invoke-static {}, Lcom/uc/crashsdk/e;->A()V
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_8b

    .line 731
    goto :goto_8f

    .line 729
    :catchall_8b
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 736
    :goto_8f
    :try_start_8f
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 737
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 738
    iget-boolean p1, p0, Lcom/uc/crashsdk/export/CrashApi;->b:Z

    if-nez p1, :cond_a4

    invoke-static {}, Lcom/uc/crashsdk/e;->F()V

    iput-boolean p7, p0, Lcom/uc/crashsdk/export/CrashApi;->b:Z
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_a5

    .line 742
    :cond_a4
    return-void

    .line 740
    :catchall_a5
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V

    .line 743
    return-void

    .line 688
    :cond_aa
    const-string p1, "VersionInfo and CustomInfo can not be null!"

    invoke-static {p6, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 858
    const-string v0, "crashsdk"

    if-eqz p0, :cond_23

    .line 863
    sget-boolean v1, Lcom/uc/crashsdk/export/CrashApi;->c:Z

    if-eqz v1, :cond_22

    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_22

    .line 864
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 865
    if-eqz p0, :cond_17

    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_17

    goto :goto_22

    .line 868
    :cond_17
    const-string p0, "Can not get Application context from given context!"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_22
    :goto_22
    return-object p0

    .line 859
    :cond_23
    const-string p0, "context can not be null!"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private static a()V
    .registers 1

    .line 781
    sget-boolean v0, Lcom/uc/crashsdk/b;->a:Z

    if-eqz v0, :cond_a

    .line 782
    const-string v0, "Has enabled java log!"

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 783
    return-void

    .line 786
    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/e;->r()V

    .line 787
    invoke-static {}, Lcom/uc/crashsdk/e;->n()V

    .line 788
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->a:Z

    .line 789
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;)V
    .registers 4

    .line 845
    invoke-static {p3}, Lcom/uc/crashsdk/d;->a(Lcom/uc/crashsdk/export/ICrashClient;)V

    .line 846
    invoke-static {p1, p2}, Lcom/uc/crashsdk/g;->a(Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;)V

    .line 848
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result p1

    if-nez p1, :cond_15

    .line 849
    invoke-static {}, Lcom/uc/crashsdk/e;->o()V

    .line 850
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Landroid/content/Context;)V

    .line 851
    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(Landroid/content/Context;)V

    .line 853
    :cond_15
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 4

    .line 904
    new-instance v0, Lcom/uc/crashsdk/e;

    invoke-direct {v0}, Lcom/uc/crashsdk/e;-><init>()V

    .line 905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 906
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .line 916
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' in isolated process!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const/4 p0, 0x1

    return p0

    .line 921
    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private static b()V
    .registers 2

    .line 799
    sget-object v0, Lcom/uc/crashsdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    sget-boolean v1, Lcom/uc/crashsdk/b;->g:Z

    if-eqz v1, :cond_29

    sget-boolean v1, Lcom/uc/crashsdk/b;->f:Z

    if-nez v1, :cond_c

    goto :goto_29

    .line 804
    :cond_c
    sget-boolean v1, Lcom/uc/crashsdk/b;->b:Z

    if-eqz v1, :cond_17

    .line 805
    const-string v1, "Has enabled native log!"

    invoke-static {v1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 806
    monitor-exit v0

    return-void

    .line 809
    :cond_17
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->c()V

    .line 812
    invoke-static {}, Lcom/uc/crashsdk/e;->C()V

    .line 814
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/b;->b:Z

    .line 817
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 818
    invoke-static {}, Lcom/uc/crashsdk/g;->d()V

    .line 819
    monitor-exit v0

    return-void

    .line 801
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    .line 819
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2

    .line 880
    :try_start_0
    sget-boolean v0, Lcom/uc/crashsdk/export/CrashApi;->d:Z

    if-nez v0, :cond_10

    .line 881
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Landroid/content/Context;)V

    .line 882
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    .line 884
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/export/CrashApi;->d:Z
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 888
    :cond_10
    return-void

    .line 886
    :catchall_11
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/Throwable;)V

    .line 889
    return-void
.end method

.method private static c()V
    .registers 1

    .line 892
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_5

    .line 893
    return-void

    .line 896
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/g;->b()V

    .line 897
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 898
    invoke-static {}, Lcom/uc/crashsdk/g;->c()V

    .line 900
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    .line 901
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;ZZZ)Lcom/uc/crashsdk/export/CrashApi;
    .registers 17

    const-class v1, Lcom/uc/crashsdk/export/CrashApi;

    monitor-enter v1

    .line 29
    :try_start_3
    sget-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;

    if-nez v0, :cond_17

    .line 30
    new-instance v0, Lcom/uc/crashsdk/export/CrashApi;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/uc/crashsdk/export/CrashApi;-><init>(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;ZZZ)V

    sput-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;

    .line 33
    :cond_17
    sget-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createInstanceEx(Landroid/content/Context;Ljava/lang/String;Z)Lcom/uc/crashsdk/export/CrashApi;
    .registers 4

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    return-object p0
.end method

.method public static createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/uc/crashsdk/export/CrashApi;
    .registers 5

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    return-object p0
.end method

.method public static createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;
    .registers 14

    .line 49
    sget-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;

    if-eqz v0, :cond_5

    .line 50
    return-object v0

    .line 53
    :cond_5
    if-nez p3, :cond_c

    .line 54
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 57
    :cond_c
    const-string v0, "useApplicationContext"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/uc/crashsdk/export/CrashApi;->c:Z

    .line 59
    invoke-static {p0}, Lcom/uc/crashsdk/export/CrashApi;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/uc/crashsdk/export/CrashApi;->b(Landroid/content/Context;)V

    .line 63
    new-instance p0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/export/CustomInfo;-><init>(Ljava/lang/String;)V

    .line 64
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    .line 65
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    .line 66
    iput-boolean p2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 69
    invoke-static {p0, p3}, Lcom/uc/crashsdk/g;->a(Lcom/uc/crashsdk/export/CustomInfo;Landroid/os/Bundle;)Lcom/uc/crashsdk/export/CustomInfo;

    move-result-object v3

    .line 70
    invoke-static {p3}, Lcom/uc/crashsdk/g;->a(Landroid/os/Bundle;)Lcom/uc/crashsdk/export/VersionInfo;

    move-result-object v4

    .line 73
    const-string p0, "enableJavaLog"

    invoke-virtual {p3, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 74
    const-string p0, "enableNativeLog"

    invoke-virtual {p3, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 75
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    const-string p2, "enableUnexpLog"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 76
    const-string p2, "enableANRLog"

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 77
    move-object v5, p4

    move v7, p0

    move v8, p1

    invoke-static/range {v2 .. v8}, Lcom/uc/crashsdk/export/CrashApi;->createInstance(Landroid/content/Context;Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;Lcom/uc/crashsdk/export/ICrashClient;ZZZ)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p4

    .line 79
    invoke-static {p2}, Lcom/uc/crashsdk/b;->a(Z)V

    .line 82
    if-nez p0, :cond_59

    if-eqz p1, :cond_6c

    .line 83
    :cond_59
    const-string p0, "libcrashsdk.so"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 84
    invoke-virtual {p4}, Lcom/uc/crashsdk/export/CrashApi;->crashSoLoaded()V

    goto :goto_6c

    .line 86
    :cond_65
    const-string p0, "crashsdk"

    const-string p1, "load libcrashsdk.so failed!"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_6c
    :goto_6c
    const/16 p0, 0xf

    const-string p1, "uploadLogDelaySeconds"

    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 92
    if-ltz p0, :cond_7f

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 93
    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(I)V

    .line 96
    :cond_7f
    return-object p4
.end method

.method public static getInstance()Lcom/uc/crashsdk/export/CrashApi;
    .registers 1

    .line 155
    sget-object v0, Lcom/uc/crashsdk/export/CrashApi;->a:Lcom/uc/crashsdk/export/CrashApi;

    return-object v0
.end method


# virtual methods
.method public addCachedInfo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 524
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 527
    invoke-static {p1, p2}, Lcom/uc/crashsdk/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 525
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addDumpFile(Lcom/uc/crashsdk/export/DumpFileInfo;)I
    .registers 8

    .line 581
    if-eqz p1, :cond_2b

    .line 584
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 587
    iget v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    const v1, 0x100111

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    .line 588
    const/4 p1, 0x0

    return p1

    .line 590
    :cond_14
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iget-boolean v3, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    iget v4, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    iget-boolean v5, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    invoke-static/range {v0 .. v5}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    move-result p1

    return p1

    .line 585
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 582
    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addDumpFile(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)I
    .registers 6

    .line 597
    new-instance v0, Lcom/uc/crashsdk/export/DumpFileInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/uc/crashsdk/export/DumpFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    if-eqz p4, :cond_25

    .line 599
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    const-string p2, "mIsEncrypted"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 600
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    const-string p2, "mWriteCategory"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    .line 601
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    const-string p2, "mDeleteAfterDump"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 603
    :cond_25
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/export/CrashApi;->addDumpFile(Lcom/uc/crashsdk/export/DumpFileInfo;)I

    move-result p1

    return p1
.end method

.method public addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 474
    if-eqz p1, :cond_6

    .line 477
    invoke-static {p1, p2}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void

    .line 475
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addStatInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 254
    const-string v0, "addStatInfo"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 255
    return v1

    .line 258
    :cond_a
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x18

    if-gt v0, v2, :cond_2b

    .line 264
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x200

    if-le v0, v2, :cond_26

    .line 265
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 267
    :cond_26
    invoke-static {p1, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 262
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is too long!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public crashSoLoaded()V
    .registers 4

    .line 162
    const-string v0, "crashSoLoaded"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    return-void

    .line 166
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->f:Z

    .line 169
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->b()V

    .line 170
    sget-object v1, Lcom/uc/crashsdk/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    sget-boolean v2, Lcom/uc/crashsdk/b;->h:Z

    if-eqz v2, :cond_2e

    sget-boolean v2, Lcom/uc/crashsdk/b;->f:Z

    if-nez v2, :cond_1b

    goto :goto_2e

    :cond_1b
    sget-boolean v2, Lcom/uc/crashsdk/b;->c:Z

    if-nez v2, :cond_2e

    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    if-nez v2, :cond_29

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->c()V

    invoke-static {}, Lcom/uc/crashsdk/g;->d()V

    :cond_29
    invoke-static {}, Lcom/uc/crashsdk/e;->w()V

    sput-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    :cond_2e
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_36

    .line 172
    invoke-static {}, Lcom/uc/crashsdk/a;->n()V

    .line 173
    invoke-static {}, Lcom/uc/crashsdk/e;->l()V

    .line 174
    return-void

    .line 170
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public createCachedInfo(Ljava/lang/String;II)I
    .registers 5

    .line 497
    if-eqz p1, :cond_19

    .line 501
    if-lez p2, :cond_11

    .line 505
    const v0, 0x100111

    and-int/2addr v0, p3

    if-nez v0, :cond_c

    .line 506
    const/4 p1, 0x0

    return p1

    .line 509
    :cond_c
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 502
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity must > 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public disableLog(I)V
    .registers 5

    .line 210
    sget-object v0, Lcom/uc/crashsdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    invoke-static {p1}, Lcom/uc/crashsdk/b;->b(I)V

    .line 213
    invoke-static {p1}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 214
    sget-boolean v1, Lcom/uc/crashsdk/b;->a:Z

    if-eqz v1, :cond_16

    .line 215
    invoke-static {}, Lcom/uc/crashsdk/e;->s()V

    .line 216
    sput-boolean v2, Lcom/uc/crashsdk/b;->a:Z

    .line 220
    :cond_16
    invoke-static {p1}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 221
    sget-boolean v1, Lcom/uc/crashsdk/b;->b:Z

    if-eqz v1, :cond_28

    .line 222
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 223
    sput-boolean v2, Lcom/uc/crashsdk/b;->b:Z

    goto :goto_2a

    .line 225
    :cond_28
    sput-boolean v2, Lcom/uc/crashsdk/b;->g:Z

    .line 229
    :cond_2a
    :goto_2a
    invoke-static {p1}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 230
    invoke-static {v2}, Lcom/uc/crashsdk/b;->a(Z)V

    .line 233
    :cond_33
    invoke-static {p1}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 234
    sget-boolean p1, Lcom/uc/crashsdk/b;->c:Z

    if-eqz p1, :cond_46

    .line 235
    invoke-static {}, Lcom/uc/crashsdk/e;->y()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 236
    sput-boolean v2, Lcom/uc/crashsdk/b;->c:Z

    goto :goto_48

    .line 239
    :cond_46
    sput-boolean v2, Lcom/uc/crashsdk/b;->h:Z

    .line 242
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    .registers 15

    .line 413
    if-eqz p1, :cond_a3

    .line 416
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_9b

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 419
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 423
    nop

    .line 424
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    iget-object v3, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 427
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    goto :goto_37

    .line 431
    :cond_4e
    move-object v0, v2

    :cond_4f
    const-wide/16 v3, 0x0

    .line 432
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    if-eqz v1, :cond_57

    const-wide/16 v3, 0x1

    .line 433
    :cond_57
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    if-eqz v1, :cond_5e

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    .line 434
    :cond_5e
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    if-eqz v1, :cond_65

    const-wide/16 v5, 0x4

    or-long/2addr v3, v5

    .line 435
    :cond_65
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    if-eqz v1, :cond_6c

    const-wide/16 v5, 0x8

    or-long/2addr v3, v5

    .line 436
    :cond_6c
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    if-eqz v1, :cond_73

    const-wide/16 v5, 0x10

    or-long/2addr v3, v5

    .line 437
    :cond_73
    iget-boolean v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    if-eqz v1, :cond_7a

    const-wide/16 v5, 0x20

    or-long/2addr v3, v5

    :cond_7a
    move-wide v7, v3

    .line 439
    iget-object v5, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    iget-object v6, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    iget-object v9, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    iget-object v11, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_8c

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8d

    :cond_8c
    nop

    :goto_8d
    move-object v12, v2

    .line 439
    invoke-static/range {v5 .. v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 420
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mLogType can not contain char \'_\' and \' \'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 417
    :cond_9b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mData or mLogType is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_a3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_aa

    :goto_a9
    throw p1

    :goto_aa
    goto :goto_a9
.end method

.method public generateCustomLog(Ljava/lang/StringBuffer;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    .line 446
    new-instance v0, Lcom/uc/crashsdk/export/CustomLogInfo;

    invoke-direct {v0, p1, p2}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 447
    if-eqz p3, :cond_63

    .line 448
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    const-string p2, "mAddHeader"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    .line 449
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    const-string p2, "mAddFooter"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    .line 450
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    const-string p2, "mAddLogcat"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    .line 451
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    const-string p2, "mUploadNow"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 453
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    const-string p2, "mAddThreadsDump"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    .line 454
    iget-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    const-string p2, "mAddBuildId"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    .line 456
    const-string p1, "mDumpFiles"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    .line 457
    const-string p1, "mCallbacks"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 458
    const-string p1, "mCachedInfos"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    .line 460
    const-string p1, "mDumpTids"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    .line 462
    :cond_63
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z

    move-result p1

    return p1
.end method

.method public generateTraces(Ljava/lang/String;J)Z
    .registers 8

    .line 652
    const-string v0, "generateTraces"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 653
    return v1

    .line 656
    :cond_a
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_16

    .line 657
    const-string p1, "crashsdk"

    const-string p2, "Crash so is not loaded!"

    invoke-static {p1, p2}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return v1

    .line 661
    :cond_16
    const/16 v0, 0xc

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p1

    const-wide/16 v2, 0x1

    cmp-long p3, p1, v2

    if-nez p3, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v1
.end method

.method public getCrashLogUploadUrl()Ljava/lang/String;
    .registers 2

    .line 278
    const-string v0, "getCrashLogUploadUrl"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 628
    invoke-static {}, Lcom/uc/crashsdk/e;->D()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsolatedHostFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 640
    invoke-static {}, Lcom/uc/crashsdk/e;->D()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLastExitType()I
    .registers 2

    .line 290
    const-string v0, "getLastExitType"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 291
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result v0

    return v0
.end method

.method public getLastExitTypeEx()I
    .registers 2

    .line 302
    const-string v0, "getLastExitTypeEx"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/b;->G()I

    move-result v0

    return v0
.end method

.method public getUncaughtException()Ljava/lang/Throwable;
    .registers 2

    .line 614
    invoke-static {}, Lcom/uc/crashsdk/e;->u()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getUnexpReason()I
    .registers 2

    .line 313
    const-string v0, "getUnexpReason"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 314
    const/16 v0, 0x64

    return v0

    .line 316
    :cond_b
    invoke-static {}, Lcom/uc/crashsdk/e;->v()I

    move-result v0

    return v0
.end method

.method public onExit()V
    .registers 1

    .line 355
    invoke-static {}, Lcom/uc/crashsdk/b;->t()V

    .line 356
    return-void
.end method

.method public registerCallback(ILandroid/webkit/ValueCallback;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 104
    if-eqz p2, :cond_2e

    .line 108
    packed-switch p1, :pswitch_data_34

    .line 122
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown event type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 119
    :pswitch_1a
    invoke-static {p2}, Lcom/uc/crashsdk/d;->b(Landroid/webkit/ValueCallback;)Z

    move-result p1

    return p1

    .line 116
    :pswitch_1f
    invoke-static {p2}, Lcom/uc/crashsdk/d;->d(Landroid/webkit/ValueCallback;)Z

    move-result p1

    return p1

    .line 113
    :pswitch_24
    invoke-static {p2}, Lcom/uc/crashsdk/d;->c(Landroid/webkit/ValueCallback;)Z

    move-result p1

    return p1

    .line 110
    :pswitch_29
    invoke-static {p2}, Lcom/uc/crashsdk/d;->a(Landroid/webkit/ValueCallback;)Z

    move-result p1

    return p1

    .line 105
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method public registerInfoCallback(Ljava/lang/String;I)I
    .registers 9

    .line 545
    if-eqz p1, :cond_15

    .line 548
    const v0, 0x100111

    and-int/2addr v0, p2

    if-nez v0, :cond_a

    .line 549
    const/4 p1, 0x0

    return p1

    .line 551
    :cond_a
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I

    move-result p1

    return p1

    .line 546
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public registerInfoCallback(Ljava/lang/String;ILjava/util/concurrent/Callable;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 571
    if-eqz p1, :cond_17

    if-eqz p3, :cond_17

    .line 574
    const v0, 0x100111

    and-int/2addr v0, p2

    if-nez v0, :cond_c

    .line 575
    const/4 p1, 0x0

    return p1

    .line 577
    :cond_c
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I

    move-result p1

    return p1

    .line 572
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public registerThread(ILjava/lang/String;)I
    .registers 3

    .line 409
    invoke-static {p1, p2}, Lcom/uc/crashsdk/a;->a(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public reportCrashStats(Z)I
    .registers 3

    .line 330
    const-string v0, "reportCrashStats"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    const/4 p1, 0x0

    return p1

    .line 333
    :cond_a
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uc/crashsdk/e;->b(ZZ)I

    move-result p1

    return p1
.end method

.method public resetCrashStats(Z)I
    .registers 3

    .line 345
    const-string v0, "resetCrashStats"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 346
    const/4 p1, 0x0

    return p1

    .line 348
    :cond_a
    invoke-static {p1}, Lcom/uc/crashsdk/e;->e(Z)I

    move-result p1

    return p1
.end method

.method public setForeground(Z)V
    .registers 2

    .line 382
    invoke-static {p1}, Lcom/uc/crashsdk/b;->b(Z)V

    .line 383
    return-void
.end method

.method public setHostFd(Landroid/os/ParcelFileDescriptor;)Z
    .registers 2

    .line 632
    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    return p1
.end method

.method public setIsolatedHostFd(Landroid/os/ParcelFileDescriptor;)Z
    .registers 2

    .line 648
    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    return p1
.end method

.method public setNewInstall()V
    .registers 2

    .line 366
    const-string v0, "setNewInstall"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    return-void

    .line 370
    :cond_9
    invoke-static {}, Lcom/uc/crashsdk/b;->s()V

    .line 371
    return-void
.end method

.method public updateCustomInfo(Landroid/os/Bundle;)I
    .registers 3

    .line 147
    if-eqz p1, :cond_c

    .line 150
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/uc/crashsdk/g;->a(Lcom/uc/crashsdk/export/CustomInfo;Landroid/os/Bundle;)Lcom/uc/crashsdk/export/CustomInfo;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/export/CrashApi;->updateCustomInfo(Lcom/uc/crashsdk/export/CustomInfo;)I

    move-result p1

    return p1

    .line 148
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public updateCustomInfo(Lcom/uc/crashsdk/export/CustomInfo;)I
    .registers 2

    .line 133
    if-eqz p1, :cond_7

    .line 136
    invoke-static {p1}, Lcom/uc/crashsdk/g;->b(Lcom/uc/crashsdk/export/CustomInfo;)I

    move-result p1

    return p1

    .line 134
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public updateUnexpInfo()Z
    .registers 2

    .line 621
    const-string v0, "updateUnexpInfo"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 622
    const/4 v0, 0x0

    return v0

    .line 624
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public updateVersionInfo(Landroid/os/Bundle;)V
    .registers 2

    .line 196
    if-eqz p1, :cond_a

    .line 199
    invoke-static {p1}, Lcom/uc/crashsdk/g;->a(Landroid/os/Bundle;)Lcom/uc/crashsdk/export/VersionInfo;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/export/CrashApi;->updateVersionInfo(Lcom/uc/crashsdk/export/VersionInfo;)V

    .line 201
    return-void

    .line 197
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public updateVersionInfo(Lcom/uc/crashsdk/export/VersionInfo;)V
    .registers 2

    .line 182
    if-eqz p1, :cond_6

    .line 185
    invoke-static {p1}, Lcom/uc/crashsdk/g;->a(Lcom/uc/crashsdk/export/VersionInfo;)V

    .line 186
    return-void

    .line 183
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public uploadCrashLogs()V
    .registers 3

    .line 389
    const-string v0, "uploadCrashLogs"

    invoke-static {v0}, Lcom/uc/crashsdk/export/CrashApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    return-void

    .line 393
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    .line 394
    return-void
.end method
