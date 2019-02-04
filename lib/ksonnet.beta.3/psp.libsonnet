{
  local hidden = {
    meta:: {
      v1:: {
        local apiVersion = { apiVersion: 'meta/v1' },
        // APIResource specifies the name of a resource and whether it is namespaced.
        apiResource:: {
          new():: {},
          // categories is a list of the grouped resources this resource belongs to (e.g. 'all')
          withCategories(categories):: self + if std.type(categories) == 'array' then { categories: categories } else { categories: [categories] },
          // categories is a list of the grouped resources this resource belongs to (e.g. 'all')
          withCategoriesMixin(categories):: self + if std.type(categories) == 'array' then { categories+: categories } else { categories+: [categories] },
          // group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
          withGroup(group):: self + { group: group },
          // name is the plural name of the resource.
          withName(name):: self + { name: name },
          // namespaced indicates if a resource is namespaced or not.
          withNamespaced(namespaced):: self + { namespaced: namespaced },
          // shortNames is a list of suggested short names of the resource.
          withShortNames(shortNames):: self + if std.type(shortNames) == 'array' then { shortNames: shortNames } else { shortNames: [shortNames] },
          // shortNames is a list of suggested short names of the resource.
          withShortNamesMixin(shortNames):: self + if std.type(shortNames) == 'array' then { shortNames+: shortNames } else { shortNames+: [shortNames] },
          // singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
          withSingularName(singularName):: self + { singularName: singularName },
          // verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
          withVerbs(verbs):: self + if std.type(verbs) == 'array' then { verbs: verbs } else { verbs: [verbs] },
          // verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
          withVerbsMixin(verbs):: self + if std.type(verbs) == 'array' then { verbs+: verbs } else { verbs+: [verbs] },
          // version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
          withVersion(version):: self + { version: version },
          mixin:: {
          },
        },
        // GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
        groupVersionForDiscovery:: {
          new():: {},
          // groupVersion specifies the API group and version in the form "group/version"
          withGroupVersion(groupVersion):: self + { groupVersion: groupVersion },
          // version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
          withVersion(version):: self + { version: version },
          mixin:: {
          },
        },
        // Initializer is information about an initializer that has not yet completed.
        initializer:: {
          new():: {},
          // name of the process that is responsible for initializing this object.
          withName(name):: self + { name: name },
          mixin:: {
          },
        },
        // Initializers tracks the progress of initialization.
        initializers:: {
          new():: {},
          // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
          withPending(pending):: self + if std.type(pending) == 'array' then { pending: pending } else { pending: [pending] },
          // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
          withPendingMixin(pending):: self + if std.type(pending) == 'array' then { pending+: pending } else { pending+: [pending] },
          pendingType:: hidden.meta.v1.initializer,
          mixin:: {
            // If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
            result:: {
              local __resultMixin(result) = { result+: result },
              mixinInstance(result):: __resultMixin(result),
              // Suggested HTTP return code for this status, 0 if not set.
              withCode(code):: self + __resultMixin({ code: code }),
              // Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
              details:: {
                local __detailsMixin(details) = __resultMixin({ details+: details }),
                mixinInstance(details):: __detailsMixin(details),
                // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                withCauses(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes: causes }) else __detailsMixin({ causes: [causes] }),
                // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                withCausesMixin(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes+: causes }) else __detailsMixin({ causes+: [causes] }),
                causesType:: hidden.meta.v1.statusCause,
                // The group attribute of the resource associated with the status StatusReason.
                withGroup(group):: self + __detailsMixin({ group: group }),
                // The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
                withName(name):: self + __detailsMixin({ name: name }),
                // If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
                withRetryAfterSeconds(retryAfterSeconds):: self + __detailsMixin({ retryAfterSeconds: retryAfterSeconds }),
                // UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                withUid(uid):: self + __detailsMixin({ uid: uid }),
              },
              detailsType:: hidden.meta.v1.statusDetails,
              // A human-readable description of the status of this operation.
              withMessage(message):: self + __resultMixin({ message: message }),
              // A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
              withReason(reason):: self + __resultMixin({ reason: reason }),
            },
            resultType:: hidden.meta.v1.status,
          },
        },
        // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
        labelSelector:: {
          new():: {},
          // matchExpressions is a list of label selector requirements. The requirements are ANDed.
          withMatchExpressions(matchExpressions):: self + if std.type(matchExpressions) == 'array' then { matchExpressions: matchExpressions } else { matchExpressions: [matchExpressions] },
          // matchExpressions is a list of label selector requirements. The requirements are ANDed.
          withMatchExpressionsMixin(matchExpressions):: self + if std.type(matchExpressions) == 'array' then { matchExpressions+: matchExpressions } else { matchExpressions+: [matchExpressions] },
          matchExpressionsType:: hidden.meta.v1.labelSelectorRequirement,
          // matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
          withMatchLabels(matchLabels):: self + { matchLabels: matchLabels },
          // matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
          withMatchLabelsMixin(matchLabels):: self + { matchLabels+: matchLabels },
          mixin:: {
          },
        },
        // A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
        labelSelectorRequirement:: {
          new():: {},
          // key is the label key that the selector applies to.
          withKey(key):: self + { key: key },
          // operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
          withOperator(operator):: self + { operator: operator },
          // values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
          withValues(values):: self + if std.type(values) == 'array' then { values: values } else { values: [values] },
          // values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
          withValuesMixin(values):: self + if std.type(values) == 'array' then { values+: values } else { values+: [values] },
          mixin:: {
          },
        },
        // ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
        listMeta:: {
          new():: {},
          // continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.
          withContinue(continue):: self + { continue: continue },
          // String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency
          withResourceVersion(resourceVersion):: self + { resourceVersion: resourceVersion },
          // selfLink is a URL representing this object. Populated by the system. Read-only.
          withSelfLink(selfLink):: self + { selfLink: selfLink },
          mixin:: {
          },
        },
        // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
        objectMeta:: {
          new():: {},
          // Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
          withAnnotations(annotations):: self + { annotations: annotations },
          // Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
          withAnnotationsMixin(annotations):: self + { annotations+: annotations },
          // The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
          withClusterName(clusterName):: self + { clusterName: clusterName },
          // Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
          withDeletionGracePeriodSeconds(deletionGracePeriodSeconds):: self + { deletionGracePeriodSeconds: deletionGracePeriodSeconds },
          // Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
          withFinalizers(finalizers):: self + if std.type(finalizers) == 'array' then { finalizers: finalizers } else { finalizers: [finalizers] },
          // Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
          withFinalizersMixin(finalizers):: self + if std.type(finalizers) == 'array' then { finalizers+: finalizers } else { finalizers+: [finalizers] },
          // GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
          //
          // If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
          //
          // Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency
          withGenerateName(generateName):: self + { generateName: generateName },
          // Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
          withLabels(labels):: self + { labels: labels },
          // Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
          withLabelsMixin(labels):: self + { labels+: labels },
          // Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
          withName(name):: self + { name: name },
          // Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
          //
          // Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
          withNamespace(namespace):: self + { namespace: namespace },
          mixin:: {
            // An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.
            //
            // When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.
            initializers:: {
              local __initializersMixin(initializers) = { initializers+: initializers },
              mixinInstance(initializers):: __initializersMixin(initializers),
              // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
              withPending(pending):: self + if std.type(pending) == 'array' then __initializersMixin({ pending: pending }) else __initializersMixin({ pending: [pending] }),
              // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
              withPendingMixin(pending):: self + if std.type(pending) == 'array' then __initializersMixin({ pending+: pending }) else __initializersMixin({ pending+: [pending] }),
              pendingType:: hidden.meta.v1.initializer,
              // If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
              result:: {
                local __resultMixin(result) = __initializersMixin({ result+: result }),
                mixinInstance(result):: __resultMixin(result),
                // Suggested HTTP return code for this status, 0 if not set.
                withCode(code):: self + __resultMixin({ code: code }),
                // Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
                details:: {
                  local __detailsMixin(details) = __resultMixin({ details+: details }),
                  mixinInstance(details):: __detailsMixin(details),
                  // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                  withCauses(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes: causes }) else __detailsMixin({ causes: [causes] }),
                  // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                  withCausesMixin(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes+: causes }) else __detailsMixin({ causes+: [causes] }),
                  causesType:: hidden.meta.v1.statusCause,
                  // The group attribute of the resource associated with the status StatusReason.
                  withGroup(group):: self + __detailsMixin({ group: group }),
                  // The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
                  withName(name):: self + __detailsMixin({ name: name }),
                  // If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
                  withRetryAfterSeconds(retryAfterSeconds):: self + __detailsMixin({ retryAfterSeconds: retryAfterSeconds }),
                  // UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                  withUid(uid):: self + __detailsMixin({ uid: uid }),
                },
                detailsType:: hidden.meta.v1.statusDetails,
                // A human-readable description of the status of this operation.
                withMessage(message):: self + __resultMixin({ message: message }),
                // A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
                withReason(reason):: self + __resultMixin({ reason: reason }),
              },
              resultType:: hidden.meta.v1.status,
            },
            initializersType:: hidden.meta.v1.initializers,
          },
        },
        // OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.
        ownerReference:: {
          new():: {},
          // If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
          withBlockOwnerDeletion(blockOwnerDeletion):: self + { blockOwnerDeletion: blockOwnerDeletion },
          // If true, this reference points to the managing controller.
          withController(controller):: self + { controller: controller },
          // Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
          withName(name):: self + { name: name },
          // UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
          withUid(uid):: self + { uid: uid },
          mixin:: {
          },
        },
        // Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
        patch:: {
          new():: {},
          mixin:: {
          },
        },
        // Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
        preconditions:: {
          new():: {},
          // Specifies the target UID.
          withUid(uid):: self + { uid: uid },
          mixin:: {
          },
        },
        // ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
        serverAddressByClientCidr:: {
          new():: {},
          // The CIDR with which clients can match their IP to figure out the server address that they should use.
          withClientCidr(clientCidr):: self + { clientCIDR: clientCidr },
          // Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
          withServerAddress(serverAddress):: self + { serverAddress: serverAddress },
          mixin:: {
          },
        },
        // StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
        statusCause:: {
          new():: {},
          // The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
          //
          // Examples:
          //   "name" - the field "name" on the current resource
          //   "items[0].name" - the field "name" on the first array entry in "items"
          withField(field):: self + { field: field },
          // A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
          withMessage(message):: self + { message: message },
          // A machine-readable description of the cause of the error. If this value is empty there is no information available.
          withReason(reason):: self + { reason: reason },
          mixin:: {
          },
        },
        // StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
        statusDetails:: {
          new():: {},
          // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
          withCauses(causes):: self + if std.type(causes) == 'array' then { causes: causes } else { causes: [causes] },
          // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
          withCausesMixin(causes):: self + if std.type(causes) == 'array' then { causes+: causes } else { causes+: [causes] },
          causesType:: hidden.meta.v1.statusCause,
          // The group attribute of the resource associated with the status StatusReason.
          withGroup(group):: self + { group: group },
          // The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
          withName(name):: self + { name: name },
          // If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
          withRetryAfterSeconds(retryAfterSeconds):: self + { retryAfterSeconds: retryAfterSeconds },
          // UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
          withUid(uid):: self + { uid: uid },
          mixin:: {
          },
        },
        //
        time:: {
          new():: {},
          mixin:: {
          },
        },
      },
    },
  },
  policy:: {
    v1beta1:: {
      local apiVersion = { apiVersion: 'policy/v1beta1' },
      podSecurityPolicy:: {
        local kind = { kind: 'PodSecurityPolicy' },
        new():: apiVersion + kind,
        mixin:: {
          // Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
          metadata:: {
            local __metadataMixin(metadata) = { metadata+: metadata },
            mixinInstance(metadata):: __metadataMixin(metadata),
            // Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
            withAnnotations(annotations):: self + __metadataMixin({ annotations: annotations }),
            // Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
            withAnnotationsMixin(annotations):: self + __metadataMixin({ annotations+: annotations }),
            // The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
            withClusterName(clusterName):: self + __metadataMixin({ clusterName: clusterName }),
            // Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
            withDeletionGracePeriodSeconds(deletionGracePeriodSeconds):: self + __metadataMixin({ deletionGracePeriodSeconds: deletionGracePeriodSeconds }),
            // Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
            withFinalizers(finalizers):: self + if std.type(finalizers) == 'array' then __metadataMixin({ finalizers: finalizers }) else __metadataMixin({ finalizers: [finalizers] }),
            // Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
            withFinalizersMixin(finalizers):: self + if std.type(finalizers) == 'array' then __metadataMixin({ finalizers+: finalizers }) else __metadataMixin({ finalizers+: [finalizers] }),
            // GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
            //
            // If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
            //
            // Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency
            withGenerateName(generateName):: self + __metadataMixin({ generateName: generateName }),
            // An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.
            //
            // When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.
            initializers:: {
              local __initializersMixin(initializers) = __metadataMixin({ initializers+: initializers }),
              mixinInstance(initializers):: __initializersMixin(initializers),
              // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
              withPending(pending):: self + if std.type(pending) == 'array' then __initializersMixin({ pending: pending }) else __initializersMixin({ pending: [pending] }),
              // Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
              withPendingMixin(pending):: self + if std.type(pending) == 'array' then __initializersMixin({ pending+: pending }) else __initializersMixin({ pending+: [pending] }),
              pendingType:: hidden.meta.v1.initializer,
              // If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
              result:: {
                local __resultMixin(result) = __initializersMixin({ result+: result }),
                mixinInstance(result):: __resultMixin(result),
                // Suggested HTTP return code for this status, 0 if not set.
                withCode(code):: self + __resultMixin({ code: code }),
                // Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
                details:: {
                  local __detailsMixin(details) = __resultMixin({ details+: details }),
                  mixinInstance(details):: __detailsMixin(details),
                  // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                  withCauses(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes: causes }) else __detailsMixin({ causes: [causes] }),
                  // The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
                  withCausesMixin(causes):: self + if std.type(causes) == 'array' then __detailsMixin({ causes+: causes }) else __detailsMixin({ causes+: [causes] }),
                  causesType:: hidden.meta.v1.statusCause,
                  // The group attribute of the resource associated with the status StatusReason.
                  withGroup(group):: self + __detailsMixin({ group: group }),
                  // The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
                  withName(name):: self + __detailsMixin({ name: name }),
                  // If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
                  withRetryAfterSeconds(retryAfterSeconds):: self + __detailsMixin({ retryAfterSeconds: retryAfterSeconds }),
                  // UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                  withUid(uid):: self + __detailsMixin({ uid: uid }),
                },
                detailsType:: hidden.meta.v1.statusDetails,
                // A human-readable description of the status of this operation.
                withMessage(message):: self + __resultMixin({ message: message }),
                // A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
                withReason(reason):: self + __resultMixin({ reason: reason }),
              },
              resultType:: hidden.meta.v1.status,
            },
            initializersType:: hidden.meta.v1.initializers,
            // Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
            withLabels(labels):: self + __metadataMixin({ labels: labels }),
            // Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
            withLabelsMixin(labels):: self + __metadataMixin({ labels+: labels }),
            // Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
            withName(name):: self + __metadataMixin({ name: name }),
            // Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
            //
            // Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
            withNamespace(namespace):: self + __metadataMixin({ namespace: namespace }),
          },
          metadataType:: hidden.meta.v1.objectMeta,
          // spec defines the policy enforced.
          spec:: {
            local __specMixin(spec) = { spec+: spec },
            mixinInstance(spec):: __specMixin(spec),
            // AllowPrivilegeEscalation determines if a pod can request to allow privilege escalation.
            withAllowPrivilegeEscalation(allowPrivilegeEscalation):: self + __specMixin({ allowPrivilegeEscalation: allowPrivilegeEscalation }),
            // AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities.
            withAllowedCapabilities(allowedCapabilities):: self + if std.type(allowedCapabilities) == 'array' then __specMixin({ allowedCapabilities: allowedCapabilities }) else __specMixin({ allowedCapabilities: [allowedCapabilities] }),
            // AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities.
            withAllowedCapabilitiesMixin(allowedCapabilities):: self + if std.type(allowedCapabilities) == 'array' then __specMixin({ allowedCapabilities+: allowedCapabilities }) else __specMixin({ allowedCapabilities+: [allowedCapabilities] }),
            // is a white list of allowed host paths. Empty indicates that all host paths may be used.
            withAllowedHostPaths(allowedHostPaths):: self + if std.type(allowedHostPaths) == 'array' then __specMixin({ allowedHostPaths: allowedHostPaths }) else __specMixin({ allowedHostPaths: [allowedHostPaths] }),
            // is a white list of allowed host paths. Empty indicates that all host paths may be used.
            withAllowedHostPathsMixin(allowedHostPaths):: self + if std.type(allowedHostPaths) == 'array' then __specMixin({ allowedHostPaths+: allowedHostPaths }) else __specMixin({ allowedHostPaths+: [allowedHostPaths] }),
            allowedHostPathsType:: hidden.extensions.v1beta1.allowedHostPath,
            // DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capabiility in both DefaultAddCapabilities and RequiredDropCapabilities.
            withDefaultAddCapabilities(defaultAddCapabilities):: self + if std.type(defaultAddCapabilities) == 'array' then __specMixin({ defaultAddCapabilities: defaultAddCapabilities }) else __specMixin({ defaultAddCapabilities: [defaultAddCapabilities] }),
            // DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capabiility in both DefaultAddCapabilities and RequiredDropCapabilities.
            withDefaultAddCapabilitiesMixin(defaultAddCapabilities):: self + if std.type(defaultAddCapabilities) == 'array' then __specMixin({ defaultAddCapabilities+: defaultAddCapabilities }) else __specMixin({ defaultAddCapabilities+: [defaultAddCapabilities] }),
            // DefaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
            withDefaultAllowPrivilegeEscalation(defaultAllowPrivilegeEscalation):: self + __specMixin({ defaultAllowPrivilegeEscalation: defaultAllowPrivilegeEscalation }),
            // FSGroup is the strategy that will dictate what fs group is used by the SecurityContext.
            fsGroup:: {
              local __fsGroupMixin(fsGroup) = __specMixin({ fsGroup+: fsGroup }),
              mixinInstance(fsGroup):: __fsGroupMixin(fsGroup),
              // Ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end.
              withRanges(ranges):: self + if std.type(ranges) == 'array' then __fsGroupMixin({ ranges: ranges }) else __fsGroupMixin({ ranges: [ranges] }),
              // Ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end.
              withRangesMixin(ranges):: self + if std.type(ranges) == 'array' then __fsGroupMixin({ ranges+: ranges }) else __fsGroupMixin({ ranges+: [ranges] }),
              rangesType:: hidden.extensions.v1beta1.idRange,
              // Rule is the strategy that will dictate what FSGroup is used in the SecurityContext.
              withRule(rule):: self + __fsGroupMixin({ rule: rule }),
            },
            fsGroupType:: hidden.extensions.v1beta1.fsGroupStrategyOptions,
            // hostIPC determines if the policy allows the use of HostIPC in the pod spec.
            withHostIpc(hostIpc):: self + __specMixin({ hostIPC: hostIpc }),
            // hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
            withHostNetwork(hostNetwork):: self + __specMixin({ hostNetwork: hostNetwork }),
            // hostPID determines if the policy allows the use of HostPID in the pod spec.
            withHostPid(hostPid):: self + __specMixin({ hostPID: hostPid }),
            // hostPorts determines which host port ranges are allowed to be exposed.
            withHostPorts(hostPorts):: self + if std.type(hostPorts) == 'array' then __specMixin({ hostPorts: hostPorts }) else __specMixin({ hostPorts: [hostPorts] }),
            // hostPorts determines which host port ranges are allowed to be exposed.
            withHostPortsMixin(hostPorts):: self + if std.type(hostPorts) == 'array' then __specMixin({ hostPorts+: hostPorts }) else __specMixin({ hostPorts+: [hostPorts] }),
            hostPortsType:: hidden.extensions.v1beta1.hostPortRange,
            // privileged determines if a pod can request to be run as privileged.
            withPrivileged(privileged):: self + __specMixin({ privileged: privileged }),
            // ReadOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
            withReadOnlyRootFilesystem(readOnlyRootFilesystem):: self + __specMixin({ readOnlyRootFilesystem: readOnlyRootFilesystem }),
            // RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
            withRequiredDropCapabilities(requiredDropCapabilities):: self + if std.type(requiredDropCapabilities) == 'array' then __specMixin({ requiredDropCapabilities: requiredDropCapabilities }) else __specMixin({ requiredDropCapabilities: [requiredDropCapabilities] }),
            // RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
            withRequiredDropCapabilitiesMixin(requiredDropCapabilities):: self + if std.type(requiredDropCapabilities) == 'array' then __specMixin({ requiredDropCapabilities+: requiredDropCapabilities }) else __specMixin({ requiredDropCapabilities+: [requiredDropCapabilities] }),
            // runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
            runAsUser:: {
              local __runAsUserMixin(runAsUser) = __specMixin({ runAsUser+: runAsUser }),
              mixinInstance(runAsUser):: __runAsUserMixin(runAsUser),
              // Ranges are the allowed ranges of uids that may be used.
              withRanges(ranges):: self + if std.type(ranges) == 'array' then __runAsUserMixin({ ranges: ranges }) else __runAsUserMixin({ ranges: [ranges] }),
              // Ranges are the allowed ranges of uids that may be used.
              withRangesMixin(ranges):: self + if std.type(ranges) == 'array' then __runAsUserMixin({ ranges+: ranges }) else __runAsUserMixin({ ranges+: [ranges] }),
              rangesType:: hidden.extensions.v1beta1.idRange,
              // Rule is the strategy that will dictate the allowable RunAsUser values that may be set.
              withRule(rule):: self + __runAsUserMixin({ rule: rule }),
            },
            runAsUserType:: hidden.extensions.v1beta1.runAsUserStrategyOptions,
            // seLinux is the strategy that will dictate the allowable labels that may be set.
            seLinux:: {
              local __seLinuxMixin(seLinux) = __specMixin({ seLinux+: seLinux }),
              mixinInstance(seLinux):: __seLinuxMixin(seLinux),
              // type is the strategy that will dictate the allowable labels that may be set.
              withRule(rule):: self + __seLinuxMixin({ rule: rule }),
              // seLinuxOptions required to run as; required for MustRunAs More info: https://git.k8s.io/community/contributors/design-proposals/security_context.md
              seLinuxOptions:: {
                local __seLinuxOptionsMixin(seLinuxOptions) = __seLinuxMixin({ seLinuxOptions+: seLinuxOptions }),
                mixinInstance(seLinuxOptions):: __seLinuxOptionsMixin(seLinuxOptions),
                // Level is SELinux level label that applies to the container.
                withLevel(level):: self + __seLinuxOptionsMixin({ level: level }),
                // Role is a SELinux role label that applies to the container.
                withRole(role):: self + __seLinuxOptionsMixin({ role: role }),
                // Type is a SELinux type label that applies to the container.
                withType(type):: self + __seLinuxOptionsMixin({ type: type }),
                // User is a SELinux user label that applies to the container.
                withUser(user):: self + __seLinuxOptionsMixin({ user: user }),
              },
              seLinuxOptionsType:: hidden.core.v1.seLinuxOptions,
            },
            seLinuxType:: hidden.extensions.v1beta1.seLinuxStrategyOptions,
            // SupplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
            supplementalGroups:: {
              local __supplementalGroupsMixin(supplementalGroups) = __specMixin({ supplementalGroups+: supplementalGroups }),
              mixinInstance(supplementalGroups):: __supplementalGroupsMixin(supplementalGroups),
              // Ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end.
              withRanges(ranges):: self + if std.type(ranges) == 'array' then __supplementalGroupsMixin({ ranges: ranges }) else __supplementalGroupsMixin({ ranges: [ranges] }),
              // Ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end.
              withRangesMixin(ranges):: self + if std.type(ranges) == 'array' then __supplementalGroupsMixin({ ranges+: ranges }) else __supplementalGroupsMixin({ ranges+: [ranges] }),
              rangesType:: hidden.extensions.v1beta1.idRange,
              // Rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
              withRule(rule):: self + __supplementalGroupsMixin({ rule: rule }),
            },
            supplementalGroupsType:: hidden.extensions.v1beta1.supplementalGroupsStrategyOptions,
            // volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used.
            withVolumes(volumes):: self + if std.type(volumes) == 'array' then __specMixin({ volumes: volumes }) else __specMixin({ volumes: [volumes] }),
            // volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used.
            withVolumesMixin(volumes):: self + if std.type(volumes) == 'array' then __specMixin({ volumes+: volumes }) else __specMixin({ volumes+: [volumes] }),
          },
          specType:: hidden.extensions.v1beta1.podSecurityPolicySpec,
        },
      },
      // Pod Security Policy List is a list of PodSecurityPolicy objects.
      podSecurityPolicyList:: {
        local kind = { kind: 'PodSecurityPolicyList' },
        new(items):: apiVersion + kind + self.withItems(items),
        // Items is a list of schema objects.
        withItems(items):: self + if std.type(items) == 'array' then { items: items } else { items: [items] },
        // Items is a list of schema objects.
        withItemsMixin(items):: self + if std.type(items) == 'array' then { items+: items } else { items+: [items] },
        itemsType:: hidden.extensions.v1beta1.podSecurityPolicy,
        mixin:: {
        },
      },
    },
  },
}
