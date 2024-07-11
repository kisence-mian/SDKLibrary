.class public Lcom/loongcheer/admobsdk/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xml"
.end annotation


# static fields
.field public static appsflyer_backup_rules:I

.field public static network_security_config:I

.field public static vungle_backup_rule:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4211
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$xml;->appsflyer_backup_rules:I

    .line 4212
    sput v0, Lcom/loongcheer/admobsdk/R$xml;->network_security_config:I

    .line 4213
    sput v0, Lcom/loongcheer/admobsdk/R$xml;->vungle_backup_rule:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
