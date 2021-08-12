.class public final Lokjoy/s/c$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokjoy/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e5\u5386"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.READ_CALL_LOG"

    const-string v1, "android.permission.WRITE_CALL_LOG"

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u901a\u8bdd\u8bb0\u5f55"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u76f8\u673a"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u901a\u8baf\u5f55"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b9a\u4f4d"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9ea6\u514b\u98ce"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.ANSWER_PHONE_CALLS"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v7, "android.permission.USE_SIP"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u624b\u673a\u4fe1\u606f"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.BODY_SENSORS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4f20\u611f\u5668"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.SEND_SMS"

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    const-string v4, "android.permission.RECEIVE_MMS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u77ed\u4fe1"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u624b\u673a\u5b58\u50a8"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
