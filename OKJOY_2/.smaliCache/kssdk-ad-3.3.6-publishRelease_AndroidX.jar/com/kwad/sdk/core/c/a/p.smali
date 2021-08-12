.class public Lcom/kwad/sdk/core/c/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeTotalCount:I

    const-string v2, "noticeTotalCount"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->perAppNoticeCount:I

    const-string v2, "perAppNoticeCount"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeAppearTime:I

    const-string v2, "noticeAppearTime"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget p1, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeContinueTime:I

    const-string v1, "noticeContinueTime"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/p;->a(Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    const-string v1, "3"

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "noticeTotalCount"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeTotalCount:I

    new-instance v0, Ljava/lang/Integer;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "perAppNoticeCount"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->perAppNoticeCount:I

    new-instance v0, Ljava/lang/Integer;

    const-string v1, "15000"

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "noticeAppearTime"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeAppearTime:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "noticeContinueTime"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;->noticeContinueTime:I

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/p;->a(Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;Lorg/json/JSONObject;)V

    return-void
.end method
