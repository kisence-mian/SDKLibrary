.class public final Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final asBytes:[B

.field private final messageClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/MessageLite;)V
    .registers 3
    .param p1, "regularForm"    # Lcom/tds/protobuf/MessageLite;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    .line 1172
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 1173
    return-void
.end method

.method public static of(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;
    .registers 2
    .param p0, "message"    # Lcom/tds/protobuf/MessageLite;

    .line 1158
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/tds/protobuf/MessageLite;)V

    return-object v0
.end method

.method private readResolveFallback()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1211
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "defaultInstance"

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1213
    .local v1, "defaultInstanceField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    .line 1215
    .local v2, "defaultInstance":Lcom/tds/protobuf/MessageLite;
    invoke-interface {v2}, Lcom/tds/protobuf/MessageLite;->newBuilderForType()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 1216
    invoke-interface {v3, v4}, Lcom/tds/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 1217
    invoke-interface {v3}, Lcom/tds/protobuf/MessageLite$Builder;->buildPartial()Lcom/tds/protobuf/MessageLite;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_25} :catch_70
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_25} :catch_54
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_25} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_25} :catch_2f
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v3

    .line 1226
    .end local v0    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultInstanceField":Ljava/lang/reflect/Field;
    .end local v2    # "defaultInstance":Lcom/tds/protobuf/MessageLite;
    :catch_26
    move-exception v0

    .line 1227
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to understand proto buffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1224
    .end local v0    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :catch_2f
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call parsePartialFrom"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1222
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call defaultInstance in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1220
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_54
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find defaultInstance in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1218
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_70
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find proto buffer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1184
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "DEFAULT_INSTANCE"

    .line 1185
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1186
    .local v1, "defaultInstanceField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1187
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/MessageLite;

    .line 1188
    .local v2, "defaultInstance":Lcom/tds/protobuf/MessageLite;
    invoke-interface {v2}, Lcom/tds/protobuf/MessageLite;->newBuilderForType()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 1189
    invoke-interface {v3, v4}, Lcom/tds/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 1190
    invoke-interface {v3}, Lcom/tds/protobuf/MessageLite$Builder;->buildPartial()Lcom/tds/protobuf/MessageLite;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_25} :catch_5a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_25} :catch_54
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_25} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_25} :catch_2f
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v3

    .line 1199
    .end local v0    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultInstanceField":Ljava/lang/reflect/Field;
    .end local v2    # "defaultInstance":Lcom/tds/protobuf/MessageLite;
    :catch_26
    move-exception v0

    .line 1200
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to understand proto buffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1197
    .end local v0    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :catch_2f
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call parsePartialFrom"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1195
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call DEFAULT_INSTANCE in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1193
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_54
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->readResolveFallback()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1191
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_5a
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find proto buffer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
