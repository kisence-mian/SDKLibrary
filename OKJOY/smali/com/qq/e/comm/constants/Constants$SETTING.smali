.class public final Lcom/qq/e/comm/constants/Constants$SETTING;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SETTING"
.end annotation


# static fields
.field public static final DEV_CLOUD_SETTING:Ljava/lang/String; = "devCloudSetting"

.field public static final SDK_CLOUD_SETTING:Ljava/lang/String; = "sdkCloudSetting"

.field public static final SETTINGDIR:Ljava/lang/String; = "e_qq_com_setting"

.field public static final SUID_FILE:Ljava/lang/String; = "gdt_suid"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
