.class Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/InstalledAppInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppPackageInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4807a215d15d082L


# instance fields
.field public appName:Ljava/lang/String;

.field public firstInstallTime:J

.field public isSystemApp:Z

.field public lastUpdateTime:J

.field public packageName:Ljava/lang/String;

.field public reportMethod:I

.field public versionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
