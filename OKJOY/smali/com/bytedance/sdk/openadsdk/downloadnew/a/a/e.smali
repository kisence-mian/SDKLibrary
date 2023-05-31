.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;
.super Ljava/lang/Object;
.source "LibSettings.java"

# interfaces
.implements Lcom/ss/android/a/a/a/h;


# static fields
.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static volatile m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b:Z

    .line 31
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c:Z

    .line 33
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d:Z

    .line 34
    const-string v0, "com.oppo.market"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->e:Ljava/lang/String;

    .line 35
    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->f:I

    .line 36
    const-string v0, "com.huawei.appmarket"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->g:Ljava/lang/String;

    .line 37
    sput v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->h:I

    .line 38
    const/16 v0, 0x1e

    sput v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->i:I

    .line 39
    const/16 v0, 0xa

    sput v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->j:I

    .line 44
    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->k:I

    .line 45
    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->l:I

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    .line 191
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    .line 67
    return-void
.end method

.method private a(I)I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 202
    if-ne p1, v0, :cond_5

    .line 203
    const/4 v0, 0x0

    .line 207
    :cond_4
    :goto_4
    return v0

    .line 204
    :cond_5
    if-nez p1, :cond_4

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;
    .registers 3

    .prologue
    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    if-nez v0, :cond_13

    .line 55
    const-class v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    monitor-enter v1

    .line 56
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    if-nez v0, :cond_12

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    .line 59
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 61
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    return-object v0

    .line 59
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static b()V
    .registers 2

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_48

    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->w()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b:Z

    .line 80
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->x()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c:Z

    .line 81
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->y()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d:Z

    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->z()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->e:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->A()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->f:I

    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->B()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->g:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->C()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->h:I

    .line 86
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->D()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->i:I

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->E()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->j:I

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->J()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->k:I

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->K()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->l:I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 96
    :cond_48
    :goto_48
    return-void

    .line 94
    :catch_49
    move-exception v0

    goto :goto_48
.end method

.method private c()Lorg/json/JSONObject;
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_90

    .line 104
    :try_start_c
    sget v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->k:I

    if-ne v1, v2, :cond_20

    .line 105
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->d()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 106
    const-string v1, "{ \"anti_hijack_dir\": { \"dir_name\": \"\u5b89\u88c5\\\"%s\\\"\", \"ignore_task_save_path\":1 }, \"anti_hijack_report_config\": { \"report_file_manager_pkg_name\": \"com.oppo.filemanager,com.coloros.filemanager\", \"report_installer_pkg_name\": \"com.android.packageinstaller\" }, \"anti_plans\": [ { \"device_plans\": \"oppo1,oppo2\", \"device_requirements\": [ { \"package_names\": \"com.oppo.filemanager,com.coloros.filemanager\", \"version_black\": [], \"version_white\": [ \"310_3.1.0\", \"3400_3.4.0\", \"3601_3.6.1\", \"330_3.3.0\", \"3606_3.6.6\", \"3605_3.6.5\" ] }, { \"package_names\": \"com.android.packageinstaller\", \"version_black\": [], \"version_white\": [ \"140_3.0.2268\", \"140_3.0.2368\" ] } ], \"type\": \"jump_file_manager\" } ], \"bugfix\": { \"default\": 1 }, \"delete_file_after_install\":1 }"

    .line 107
    new-instance v1, Lorg/json/JSONObject;

    const-string v4, "{ \"anti_hijack_dir\": { \"dir_name\": \"\u5b89\u88c5\\\"%s\\\"\", \"ignore_task_save_path\":1 }, \"anti_hijack_report_config\": { \"report_file_manager_pkg_name\": \"com.oppo.filemanager,com.coloros.filemanager\", \"report_installer_pkg_name\": \"com.android.packageinstaller\" }, \"anti_plans\": [ { \"device_plans\": \"oppo1,oppo2\", \"device_requirements\": [ { \"package_names\": \"com.oppo.filemanager,com.coloros.filemanager\", \"version_black\": [], \"version_white\": [ \"310_3.1.0\", \"3400_3.4.0\", \"3601_3.6.1\", \"330_3.3.0\", \"3606_3.6.6\", \"3605_3.6.5\" ] }, { \"package_names\": \"com.android.packageinstaller\", \"version_black\": [], \"version_white\": [ \"140_3.0.2268\", \"140_3.0.2368\" ] } ], \"type\": \"jump_file_manager\" } ], \"bugfix\": { \"default\": 1 }, \"delete_file_after_install\":1 }"

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 113
    :cond_20
    :goto_20
    const-string v4, "landing_page_progressbar_visible"

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c:Z

    if-eqz v1, :cond_8c

    move v1, v2

    :goto_27
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v1, "download_completed_event_tag"

    const-string v4, "openad_sdk_download_complete_tag"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "is_enable_start_install_again"

    sget v4, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->h:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v1, "start_install_interval"

    sget v4, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->i:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "next_install_min_interval"

    sget v4, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->j:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v4, "hook"

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d:Z

    if-eqz v1, :cond_8e

    move v1, v2

    :goto_51
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "hook_oppo_arg1"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "hook_oppo_arg4"

    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "hook_huawei_arg1"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "check_hijack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "back_miui_silent_install"

    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->l:I

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    :goto_7a
    return-object v0

    .line 108
    :cond_7b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->c()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 109
    const-string v1, "{ \"anti_hijack_dir\": { \"dir_name\": \"\u5b89\u88c5\\\"%s\\\"\", \"ignore_task_save_path\":1 }, \"anti_hijack_report_config\": { \"report_file_manager_pkg_name\": \"com.android.filemanager\", \"report_installer_pkg_name\": \"com.android.packageinstaller\" }, \"anti_plans\": [ { \"device_plans\": \"vivo1,vivo2\", \"device_requirements\": [ { \"package_names\": \"com.android.filemanager\", \"version_black\": [], \"version_white\": [ \"22_3.0\", \"23_3.0\", \"23_2.5\", \"25_3.2\", \"25_3.1\", \"4030_4.0.3.0\", \"5140_5.1.4.0\", \"5301_5.3.0.1\", \"5211_5.2.1.1\", \"5512_5.5.1.2\", \"5401_5.4.0.1\", \"5205_5.2.0.5\", \"5203_5.2.0.3\", \"5302_5.3.0.2\", \"5312_5.3.1.2\", \"5102_5.1.0.2\", \"5204_5.2.0.4\", \"5314_5.3.1.4\", \"5313_5.3.1.3\", \"5005_5.0.0.5\", \"5112_5.1.1.2\", \"5400_5.4.0.0\", \"5002_5.0.0.2\", \"5130_5.1.3.0\", \"4210_4.2.1.0\", \"5111_5.1.1.1\", \"5311_5.3.1.1\", \"4200_4.2.0.0\" ] }, { \"package_names\": \"com.android.packageinstaller\", \"version_black\": [], \"version_white\": [ \"5_2.5.4.2\", \"5_2.5.4.3\", \"5_3.0.6.1\", \"5_3.0.6.2\", \"5_3.0.8.1\", \"5_3.0.8.0\", \"5_3.0.7.0\", \"5_3.0.9.0\", \"5_4.0.7.0\", \"5_4.0.6.0\", \"5_4.0.10.0\", \"5_5.0.5.0\", \"5_4.0.5.3\", \"5_3.0.7.1\", \"5_4.0.5.5\", \"5_5.0.6.1\", \"5_5.0.6.2\", \"28_5.0.6.5\", \"27_4.0.10.3\", \"26_4.0.10.3\", \"5067_5.0.6.7\", \"5066_5.0.6.6\", \"5068_5.0.6.8\", \"5_2.5.4.0\", \"27_4.0.10.4\", \"5_3.0.6.0\", \"5_2.5.3.0\", \"5_4.0.5.4\", \"5_3.0.3.3\", \"5_3.0.2.7\", \"5_3.0.5.0\", \"5_4.0.5.0\" ] } ], \"type\": \"jump_file_manager\" } ], \"bugfix\": { \"default\": 1 }, \"delete_file_after_install\":1 }"

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    const-string v4, "{ \"anti_hijack_dir\": { \"dir_name\": \"\u5b89\u88c5\\\"%s\\\"\", \"ignore_task_save_path\":1 }, \"anti_hijack_report_config\": { \"report_file_manager_pkg_name\": \"com.android.filemanager\", \"report_installer_pkg_name\": \"com.android.packageinstaller\" }, \"anti_plans\": [ { \"device_plans\": \"vivo1,vivo2\", \"device_requirements\": [ { \"package_names\": \"com.android.filemanager\", \"version_black\": [], \"version_white\": [ \"22_3.0\", \"23_3.0\", \"23_2.5\", \"25_3.2\", \"25_3.1\", \"4030_4.0.3.0\", \"5140_5.1.4.0\", \"5301_5.3.0.1\", \"5211_5.2.1.1\", \"5512_5.5.1.2\", \"5401_5.4.0.1\", \"5205_5.2.0.5\", \"5203_5.2.0.3\", \"5302_5.3.0.2\", \"5312_5.3.1.2\", \"5102_5.1.0.2\", \"5204_5.2.0.4\", \"5314_5.3.1.4\", \"5313_5.3.1.3\", \"5005_5.0.0.5\", \"5112_5.1.1.2\", \"5400_5.4.0.0\", \"5002_5.0.0.2\", \"5130_5.1.3.0\", \"4210_4.2.1.0\", \"5111_5.1.1.1\", \"5311_5.3.1.1\", \"4200_4.2.0.0\" ] }, { \"package_names\": \"com.android.packageinstaller\", \"version_black\": [], \"version_white\": [ \"5_2.5.4.2\", \"5_2.5.4.3\", \"5_3.0.6.1\", \"5_3.0.6.2\", \"5_3.0.8.1\", \"5_3.0.8.0\", \"5_3.0.7.0\", \"5_3.0.9.0\", \"5_4.0.7.0\", \"5_4.0.6.0\", \"5_4.0.10.0\", \"5_5.0.5.0\", \"5_4.0.5.3\", \"5_3.0.7.1\", \"5_4.0.5.5\", \"5_5.0.6.1\", \"5_5.0.6.2\", \"28_5.0.6.5\", \"27_4.0.10.3\", \"26_4.0.10.3\", \"5067_5.0.6.7\", \"5066_5.0.6.6\", \"5068_5.0.6.8\", \"5_2.5.4.0\", \"27_4.0.10.4\", \"5_3.0.6.0\", \"5_2.5.3.0\", \"5_4.0.5.4\", \"5_3.0.3.3\", \"5_3.0.2.7\", \"5_3.0.5.0\", \"5_4.0.5.0\" ] } ], \"type\": \"jump_file_manager\" } ], \"bugfix\": { \"default\": 1 }, \"delete_file_after_install\":1 }"

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_8a} :catch_93

    move-object v0, v1

    goto :goto_20

    :cond_8c
    move v1, v3

    .line 113
    goto :goto_27

    :cond_8e
    move v1, v3

    .line 121
    goto :goto_51

    .line 132
    :catch_90
    move-exception v0

    move-object v0, v1

    goto :goto_7a

    :catch_93
    move-exception v1

    goto :goto_7a
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
